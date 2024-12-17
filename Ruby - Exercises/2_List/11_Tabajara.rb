#11. The Tabajara Organizations decided to give their employees a salary increase and hired him to develop the program that will calculate the readjustments.
#- Make a program that receives an employee's salary and readjusts it according to the following criteria, based on the current salary:
#- salaries up to BRL 280.00 (including): 20% increase
# salaries between BRL 280.00 and BRL 700.00: 15% increase
#- salaries between BRL 700.00 and BRL 1500.00: 10% increase
#- salaries from R$ 1500.00 onwards: 5% increase After the increase is made, inform the
#  screen:
#- the salary before the readjustment;
#- the percentage of increase applied;
#- the value of the increase;
#- the new salary, after the increase


def tabajara

puts "Enters the salary of employee"

salary_atual = gets.chomp.to_f


#Percent! ---------------

salary1 = (salary_atual / 100) *20

salary2 = (salary_atual / 100) *15

salary3 = (salary_atual / 100) *10

salary4 = (salary_atual / 100) *5



if (salary_atual <= 280)
    puts "Salary before the readjustment R$#{salary_atual}"
    puts "The percentuage of increase applied is 20%"
    puts "The value of increase R$#{salary_atual - salary1}"
    puts "The new salary, after the increase R$#{salary1}"

elsif (salary_atual >= 281 && salary_atual <= 700)
    puts "Salary before the readjustment R$#{salary_atual}"
    puts "The percentuage of increase applied is 15%"
    puts "The value of increase R$#{salary_atual - salary2}"
    puts "The new salary, after the increase R$#{salary2}"

elsif (salary_atual >= 701 && salary_atual <= 1499)
    puts "Salary before the readjustment R$#{salary_atual}"
    puts "The percentuage of increase applied is 10%"
    puts "The value of increase R$#{salary_atual - salary3}"
    puts "The new salary, after the increase R$#{salary3}"


elsif (salary_atual >= 1500)
    puts "Salary before the readjustment R$#{salary_atual}"
    puts "The percentuage of increase applied is 5%"
    puts "The value of increase R$#{salary_atual - salary4}"
    puts "The new salary, after the increase R$#{salary4}"


end






end

tabajara