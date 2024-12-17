#7. Make a Program that reads three numbers and displays the largest and smallest of them.

def bands

    puts "Enters 3 numbers and I will show you which is the biggest and smallest!"

    num1 = gets.chomp.to_f
    
    num2 = gets.chomp.to_f
    
    num3 = gets.chomp.to_f


    if (num1 > num2 && num1 > num3)
        puts "The bigger number is #{num1}"
    
    elsif (num2 > num1 && num2 > num3)
        puts "The bigger number is #{num2}"
    
    elsif (num3 > num2 && num3 > num1)
        puts "The bigger number is #{num3}"
    
    
    end

    
    if (num1 < num2 && num1 < num3)
        puts "The smallest number is #{num1}"
    
    elsif (num2 < num1 && num2 < num3)
        puts "The smallest number is #{num2}"
    
    elsif (num3 < num2 && num3 < num1)
        puts "The smallest number is #{num3}"
    
    
    end
    

    


end

bands