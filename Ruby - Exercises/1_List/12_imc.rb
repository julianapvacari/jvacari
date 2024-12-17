#12. Having as input the height of a person, build an algorithm that calculates its weight
# ideal, using the following formula: (72.7*height) - 58

def imc


puts "How tall are you?"

alt = gets.chomp.to_f


ideal = (72.7*alt) - 58


puts "Your ideal weight is: #{ideal.to_i}"



end

imc