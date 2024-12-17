#14. Make a program that reads the two partial scores obtained by a student in a subject over a period of time.
#semester, and calculate your average. The attribution of concepts follows the table below:
#- Average Utilization Concept
#- Between 9.0 and 10.0 A
#- Between 7.5 and 9.0 B
#- Between 6.0 and 7.5 C
#- Between 4.0 and 6.0 D
#- Between 4.0 and zero E

#The algorithm must show the grades, the average, the corresponding concept and the message on the screen.
#“PASS” if the grade is A, B or C or “FAIL” if the grade is D or E.



def note

  puts "Enters with two partial grades:"

  one = gets.chomp.to_f

  two = gets.chomp.to_f

  total = (one + two) / 2







  if (total >= 9 && total <= 10)
    puts "Approved - PASS (A)"

  elsif (total >= 7.5 && total <= 8.9)
    puts "Approved - PASS (B)"

  elsif (total >= 6 && total <= 7.4)
    puts "Approved - PASS (C)"

  elsif (total >= 4 && total <= 5.9)
    puts "Disapproved - FAIL (D)"

  elsif (total >= 0 && total <= 3.9)
    puts "Disapproved - FAIL (E)"  

  else ()
    puts "Invalid"
  


  end






end


note