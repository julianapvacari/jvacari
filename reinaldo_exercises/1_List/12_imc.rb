#Your ideal weight

def imc


puts "How tall are you?"

alt = gets.chomp.to_f


ideal = (72.7*alt) - 58


puts "Your ideal weight is: #{ideal.to_i}"



end

imc