#2. Make a program to calculate a payroll, knowing that the discounts are from the Income Tax, which depends on the gross salary (as shown in the table below) and 3% for the Union and that the FGTS corresponds to 11% of the salary Gross, but not discounted (it is the company that deposits). The Net salary corresponds to the Gross Salary minus the discounts.
#- The program should ask the user
#the value of your hour and the number of hours worked in the month.
#  - IR discount:
#- Gross Salary up to 900 (inclusive) - exempt
#- Gross Salary up to 1500 (inclusive) - 5% discount
#- Gross Salary up to 2500 (inclusive) - 10% discount
#- Gross salary above 2500 - 20% discount Print the information on the screen, as shown in the example below. In the example the hour value is 5 and the hour quantity is 220.





def payroll

#IR depends of salary amount $900 isent && 1500 == 5% && 2500 == 10%
#Syndicate == 3% 

#FGTS isn't discount becuause company pays = 11% of salary total amount


puts "How much do you earn per hour?"

hours_pay = gets.chomp.to_f   




# --------------------------




puts "How many hours do you work in the month?"

many_hours = gets.chomp.to_f







# ----- Salary -------------

salary = hours_pay * many_hours




ir1 = (salary / 100) * 5

ir2 = (salary / 100) * 10

ir3 = (salary / 100) * 20








syndicate = (salary / 100) * 3 

fgts = (salary / 100) * 11 




if (salary <= 900)
     puts "The salary amounth is R$#{salary}"
     puts "The IR discount exempt."
     puts "The payment for syndicate is R$#{syndicate} (3%)"
     puts "The payment for FGTS is R$#{fgts} (11%)"
     puts "The total discount is R$#{syndicate + fgts}"
     puts "The liquid salary is R$#{salary - fgts - syndicate}"


elsif (salary >= 901 && salary <= 1499)
     puts "The salary amounth is R$#{salary}"
     puts "The IR discount is 5% discount R$#{ir1}"
     puts "The payment for syndicate is R$#{syndicate} (3%)"
     puts "The payment for FGTS is R$#{fgts} (11%)"
     puts "The total discount is R$#{syndicate + fgts +ir1}"
     puts "The liquid salary is R$#{salary - fgts - syndicate - ir1}"


elsif (salary >= 1500 && salary <= 2499)
     puts "The salary amounth is R$#{salary}"
     puts "The IR discount is 10% discount R$#{ir2}"
     puts "The payment for syndicate is R$#{syndicate} (3%)"
     puts "The payment for FGTS is R$#{fgts} (11%)"
     puts "The total discount is R$#{syndicate + fgts +ir2}"
     puts "The liquid salary is R$#{salary - fgts - syndicate - ir2}"

     
elsif (salary >= 2500)
     puts "The salary amounth is R$#{salary}"
     puts "The IR discount is 20% discount R$#{ir3}"
     puts "The payment for syndicate is R$#{syndicate} (3%)"
     puts "The payment for FGTS is R$#{fgts} (11%)"
     puts "The total discount is R$#{syndicate + fgts +ir3}"
     puts "The liquid salary is R$#{salary - fgts - syndicate - ir3}"



end






end



payroll