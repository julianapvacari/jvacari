#9. Make a program that asks for the temperature in degrees Fahrenheit, transforms and displays the temperature
#in degrees Celsius oC = 5 * ((F-32) / 9).

def f_to_c

puts "Enter temperature in Fahrenheit:"

    f = gets


   c = f.to_f - 32

   celsius = c.to_f/1.8


puts "Temperature em Celsius is: #{celsius} ºC"



end


f_to_c