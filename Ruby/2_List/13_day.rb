#13. Make a Program that reads a number and displays the corresponding day of the week. (1-Sunday, 2-
#Second, etc.), if you enter another value, an invalid value should appear.



def day



puts "Enter numbers corresponding to the day of the week:"

numb_day = gets.chomp.to_i




if (numb_day == 1)
    puts "Is Sunday"

elsif (numb_day == 2)
    puts "Is Monday"

elsif (numb_day == 3)
    puts "Is Tuesday"

elsif (numb_day == 4)
    puts "Is Wednesday"

elsif (numb_day == 5)
    puts  "Is Thursday"

elsif (numb_day == 6)
    puts "Is Friday"

elsif (numb_day == 7)
    puts "Is Saturday"

else ()
    puts "Invalid Number"


end




end

day