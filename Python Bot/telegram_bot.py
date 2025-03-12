from telegram import Update
from telegram.ext import Application, CommandHandler, ContextTypes, ConversationHandler, MessageHandler, filters
from pymongo import MongoClient


uri = "mongodb+srv://julianapvacari:8oHhhaowrIr293bI@cluster0.cljar.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
client = MongoClient(uri)
db = client["bank_bot"]
users_collection = db["users"]

NAME, EMAIL_REGISTRATION, FOUNDS, EMAIL_LOGIN, DEPOSIT, WITHDRAWAL = range(6)

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text(
        'Hi! Welcome to your Check Balance Bot, please select an option below:\n'
        'To register, type /register or to access your account, type /access\n'
        '(You can type /cancel to stop the chat anytime!)'
    )

async def register(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text('Please, tell me your name:')
    return NAME

async def get_name(update: Update, context: ContextTypes.DEFAULT_TYPE):
    context.user_data['name'] = update.message.text
    await update.message.reply_text(f'Hello, {update.message.text}! Now, please tell me your email:')
    return EMAIL_REGISTRATION

async def get_email_registration(update: Update, context: ContextTypes.DEFAULT_TYPE):
    context.user_data["email"] = update.message.text  
    name = context.user_data["name"]
    email = context.user_data["email"]

    users_collection.insert_one({"name": name, "email": email, "balance": 0})

    await update.message.reply_text(f"Registration complete! Now you can type /access to check your account! \nName: {name}\nEmail: {email}")
    return ConversationHandler.END

async def access(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text('Please, tell me your email to access your account:')
    return EMAIL_LOGIN

async def get_email_login(update: Update, context: ContextTypes.DEFAULT_TYPE):
    email = update.message.text
    user = users_collection.find_one({"email": email})
    
    if user:
        context.user_data['email'] = email
        context.user_data['name'] = user['name']
        
        await update.message.reply_text(f'Welcome {user["name"]}!\n'
            'To add funds type /deposit\n'
            'For withdrawal type /withdraw\n'
            'Or if you just want to check balance type /check'
        )
        return FOUNDS
    else:
        await update.message.reply_text('Sorry, no account found with this email. Please check the email and try again.')
        return ConversationHandler.END

async def deposit(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text('How much do you want to deposit?')
    return DEPOSIT

async def get_deposit_amount(update: Update, context: ContextTypes.DEFAULT_TYPE):
    try:
        deposit_amount = float(update.message.text)
        email = context.user_data["email"]
        
        user = users_collection.find_one({"email": email})
        if user:

            new_balance = user.get("balance", 0) + deposit_amount
            users_collection.update_one({"email": email}, {"$set": {"balance": new_balance}})
            
            await update.message.reply_text(f'Deposit of {deposit_amount} successful! Your new balance is {new_balance}.')
            
            await update.message.reply_text(
                "What would you like to do next?\n"
                "To deposit again type /deposit\n"
                "To withdraw money type /withdraw\n"
                "To check balance again type /check\n"
                "To stop the chat type /cancel"
            )
        else:
            await update.message.reply_text('Account not found.')
    except ValueError:
        await update.message.reply_text('Please enter a valid number for the deposit.')
    
    return FOUNDS

async def withdrawal(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text('How much do you want to withdraw?')
    return WITHDRAWAL

async def get_withdrawal_amount(update: Update, context: ContextTypes.DEFAULT_TYPE):
    try:
        withdrawal_amount = float(update.message.text)
        email = context.user_data["email"]
        
        user = users_collection.find_one({"email": email})
        if user:
            current_balance = user.get("balance", 0)
            if current_balance >= withdrawal_amount:
                new_balance = current_balance - withdrawal_amount
                users_collection.update_one({"email": email}, {"$set": {"balance": new_balance}})
                await update.message.reply_text(f'Withdrawal of {withdrawal_amount} successful! Your new balance is {new_balance}.')
            else:
                await update.message.reply_text('Insufficient balance for this withdrawal.')

            await update.message.reply_text(
                "What would you like to do next?\n"
                "To deposit again type /deposit\n"
                "To withdraw money type /withdraw\n"
                "To check balance again type /check\n"
                "To stop the chat type /cancel"
            )
        else:
            await update.message.reply_text('Account not found.')
    except ValueError:
        await update.message.reply_text('Please enter a valid number for the withdrawal.')
    
    return FOUNDS

async def check_balance(update: Update, context: ContextTypes.DEFAULT_TYPE):
    email = context.user_data["email"]
    
    user = users_collection.find_one({"email": email})
    if user:

        balance = user.get("balance", 0)
        await update.message.reply_text(f'Your current balance is {balance}.')

        await update.message.reply_text(
            "What would you like to do next?\n"
            "To deposit again type /deposit\n"
            "To withdraw money type /withdraw\n"
            "To check balance again type /check\n"
            "To stop the chat type /cancel"
        )
    else:
        await update.message.reply_text('Account not found.')
    
    return FOUNDS

async def cancel(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Registration canceled.")
    return ConversationHandler.END

def main():
    TOKEN = "7563736135:AAFiMV3pU6yEhhcYz4jUyZ32OQIP3QfSKLk"

    application = Application.builder().token(TOKEN).build()

    application.add_handler(CommandHandler('start', start))

    conv_handler_register = ConversationHandler(
        entry_points=[CommandHandler('register', register)],
        states={
            NAME: [MessageHandler(filters.TEXT & ~filters.COMMAND, get_name)],
            EMAIL_REGISTRATION: [MessageHandler(filters.TEXT & ~filters.COMMAND, get_email_registration)]
        },
        fallbacks=[CommandHandler('cancel', cancel)]
    )

    conv_handler_access = ConversationHandler(
        entry_points=[CommandHandler('access', access)],
        states={
            EMAIL_LOGIN: [MessageHandler(filters.TEXT & ~filters.COMMAND, get_email_login)],
            FOUNDS: [
                CommandHandler('deposit', deposit),
                CommandHandler('withdraw', withdrawal),
                CommandHandler('check', check_balance)
            ],
            DEPOSIT: [MessageHandler(filters.TEXT & ~filters.COMMAND, get_deposit_amount)],
            WITHDRAWAL: [MessageHandler(filters.TEXT & ~filters.COMMAND, get_withdrawal_amount)],
        },
        fallbacks=[CommandHandler('cancel', cancel)]
    )

    application.add_handler(conv_handler_register)
    application.add_handler(conv_handler_access)

    application.run_polling()

if __name__ == '__main__':
    main()
