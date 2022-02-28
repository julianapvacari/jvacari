#Calculate fee sallary per month 

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