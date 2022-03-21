#15. Make a program that asks how much you earn per hour and the number of hours worked in the
# month. Calculate and display the total of your salary in that month, knowing that 11% is deducted
# for the Income Tax, 8% for the INSS and 5% for the union, make a program that gives us:
# The. gross salary.
# B. How much did you pay the INSS?
# ç. How much did you pay the union?
# d. the net salary.
# and. Calculate the discounts and the net salary, according to the table below:
# f. + Gross Salary: R$
# g. - Income Tax (11%): BRL
# H. - INSS (8%): BRL
# i. - Union (5%): BRL
# = Net Salary: R$
# Obs.: Gross Salary - Discounts = Net Salary.

def fee

puts "How much do you earn per hour?"

    salary_hour = gets.chomp.to_f

puts "How many hours do you work in the month?"

    hours_month = gets.chomp.to_f

total = salary_hour * hours_month

puts "Gross salary, without discounts: #{total}"


    inss1 = total / 100
    inss2 = inss1*8

      puts "Was paid to the INSS: R$#{inss2}"


    syndicate1 = total / 100
    syndicate2 = syndicate1*5

      puts "Was paid to the Syndicate: R$#{syndicate2}"


    ir1 = total / 100
    ir2 = ir1*11

    puts "The net salary is: R$#{total - ir2 - inss2 - syndicate2}"

    



end

fee