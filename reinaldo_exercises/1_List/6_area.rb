#6. Write a program that asks for the radius of a circle, calculates and displays its area.

def area_circle

puts "Enter the radius of the circle for calculating the area:"

radius = gets

r = radius.to_f*radius.to_f

a = 3.14*r

puts "The area is: #{a} "



end

area_circle