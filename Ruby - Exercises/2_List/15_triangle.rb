#15. Make a Program that asks for the 3 sides of a triangle. The program should inform if the values
#can be a triangle. Indicate, if the sides form a triangle, whether the triangle is: equilateral,
#isosceles or scalene.
#- Tips:
#- Three sides form a triangle when the sum of any two sides is greater than the
#third;
#- Equilateral Triangle: three equal sides;
#- Isosceles Triangle: any two equal sides;
#- Scalene Triangle: three different sides;



def triangle

puts "Enters the 3 sides of the triangle:"


a = gets.chomp.to_f

b = gets.chomp.to_f

c = gets.chomp.to_f




#-------xxx

one = a + b 
two = a + c
three = b + a
four = b + c
five = c + a
six = c + b



k1 = (a + b + c) / 3 




if (one < c || two < b || four < a)
    puts "Is not a triangle" 

    
elsif (k1 == a && k1 == b && k1 = c)
    puts "Equilateral Triangle"    


elsif (a == b && a = c && b = c)
    puts "Isosceles Triangle"    


else ()
    # (one > c || two > b || three > c || four > a || five > b || six >a)
    puts "Scalene Triangle"



end



end


triangle

