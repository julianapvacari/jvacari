
# 17. Make a Program that asks for a number corresponding to a certain year and then informs
# whether or not this year is a leap year.



def year

    puts "Enters with the year and I will inform if is leap year or not"

    y = gets.chomp.to_i



    if (y%4 == 0 || y%400 == 0)
        puts "Is a leap year"

    else ()
        puts "Is not a leap year"

    end





end

year