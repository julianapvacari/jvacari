#3. Make a Program that checks if a typed letter is "F" or "M". As the letter write: F -
#Female, M - Male, Gender Invalid.

def f_or_m 

 puts "Enters the gender with f for Female and m for Male:"
 
 STDOUT.flush

  gender = gets.chomp


  if (gender == "f")
     puts "Female (Gender is valid)" 

  elsif (gender == "F")
     puts "Female (Gender is valid)" 

  elsif (gender == "m")
     puts "Male (Gender is valid)"

  elsif (gender == "M")
      puts "Male (Gender is valid)"

  else (gender)
     puts "Invalid gender."

end




end

f_or_m