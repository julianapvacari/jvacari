#How old are you to drink?

def age_to_drink


puts "How old are you?"
age = gets

agedrink = age.to_f

if (agedrink >= 18) 
  puts "You can drink"

elsif (agedrink <= 17)
  puts "You can't drink"


end

end

age_to_drink
