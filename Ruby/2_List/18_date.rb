#8. Make a Program that asks for a date in the format dd/mm/yyyy and determine if it is a date
#valid.



def date

    puts "Enters with the date in the format dd/mm/yyyy and I will determinate if is a valid:"
    
    puts "Enters the day:"
     day = gets.chomp.to_i

    puts "Enters the month"
     month = gets.chomp.to_i

    puts "Enters the year"
     year = gets.chomp.to_i



# ar [1, 3, 5].include? month
# ar2 [2, 4, 6].exclude?(month)

    if [1, 3, 5, 7, 8 , 10, 12].include?(month)
      
      #   if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    
    elsif day >= 0 || day <= 31 
    elsif year >= 0
      true
       end


    if (month == 4 || month == 6 || month == 9 || month == 11)
    elsif (day >= 0 || day <= 30) 
    elsif (year >= 0)
      true
       end
  

########Feb

    if (month == 2)
    elsif (year%100 != 0 && year%4 == 0 || year%400 == 0)
    elsif (day >= 0 || day <= 28)
    elsif (day >= 0 || day <= 29)
      true
       end    




        if (true)
         puts "Valid date"

        else ()
         puts "Invalid Date"

        end




end

date


