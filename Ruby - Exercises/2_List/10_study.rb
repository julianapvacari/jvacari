#Make a program that asks which shift you study. Ask to type M-morning or V-
#Evening or N- Evening. Print the message "Good morning!", "Good afternoon!" or good night!" or "Value
#Invalid!", as the case may be.


def turn_study

    puts "What time do you study?"
        puts "Enters M-morning or V-Evening or N-Night"


    t = gets.chomp
    
     
    if (t == "m")
        puts "Good morning!"

    elsif (t == "M")
       puts "Good morning!"

    elsif (t == "v")
        puts "Good evening!"

    elsif (t == "V")
        puts "Good evening!"

    elsif (t == "n")
        puts "Good night!"

    elsif (t == "N")
        puts "Good night!"

    else 
        puts "Invalid!"



    end




end

turn_study