#8. Make a program that asks the price of three products and tells you which product you should buy,
#knowing that the decision is always for the cheapest.

def price

   puts "Enter the price of 3 products and I will tell you which one you should buy!"

   num1 = gets.chomp.to_f
    
   num2 = gets.chomp.to_f
   
   num3 = gets.chomp.to_f


if (num1 < num2 && num1 < num3)
    puts "You should buy the First product."

elsif (num2 < num1 && num2 < num3)
    puts "You should buy the Second product."

elsif (num3 < num2 && num3 < num1)
    puts "You should buy the Third product."


end









end

price