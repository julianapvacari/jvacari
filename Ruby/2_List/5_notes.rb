#5. Make a program for reading a student's two partial grades. The program must calculate the
#average achieved per student and present:
#- The message "Approved", if the average reached is greater than or equal to seven;
#- The message "Fail", if the average is less than seven;
#- The message "Approved with Distinction", if the average is equal to ten.

def note

  puts "Enters with two partial grades:"

  one = gets.chomp.to_f

  two = gets.chomp.to_f

  total = (one + two) / 2


  if (total == 10)
    puts "Approved with Distinction"

  elsif (total > 10)
    puts "Invalid grades"

  elsif (total < 0)
    puts "Invalid grades"

  elsif (total >= 7)
    puts "Approved"

  else 
    puts "Fail"
  


  end



end

note