#9. Make a Program that reads three numbers and displays them in descending order.


def descend

 puts "Enters 3 numbers and I will show you in descending order!"

  num1 = gets.chomp.to_f

  num2 = gets.chomp.to_f

  num3 = gets.chomp.to_f

  des = [num1, num2, num3]

  des.reverse!


  puts des


end

descend