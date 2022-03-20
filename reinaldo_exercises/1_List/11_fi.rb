#Float and Integer

def int_flo

puts "Enter number Integer:"

int = gets.chomp.to_i

puts "Enter number Real:"

flo = gets.chomp.to_f



dobro = int*2
metade = flo/2
terceiro = dobro + metade


triplo = int*3
soma_terceiro = triplo+terceiro

cubo = terceiro*3


puts "A: The product of twice the first and half of the second #{terceiro}"

puts "The sum of triple the first and the third #{soma_terceiro}"

puts "The third cubed: #{cubo}"





end

int_flo