# 16. Write a program that calculates the roots of a quadratic equation, in the form ax2 + bx + c. THE
# program should ask for the values of a, b and c and make the consistencies, informing the user in the
# following situations:
# The. If the user informs the value of A equal to zero, the equation is not of the second degree and the
# program should not ask for the other values, being terminated;
# B. If the calculated delta is negative, the equation has no real roots. Inform the user and
# close the program;
# ç. If the calculated delta is equal to zero the equation has only one real root; inform it to
# user;
# d. If the delta is positive, the equation has two real roots; inform them to the user;




def equation


puts "This program calculates quadratic equations, enter the values of a, b and c:"

a = gets.chomp.to_i

b = gets.chomp.to_i

c = gets.chomp.to_i

# ax²+bx+c=0




aa = a * a

bb = b * b

aaa = 2 * a



four1 = 4 * a 
four2 = 4 * c
four3 = four1 + four2


#Delta = b²-4ac
delta1 = bb - four3


raiz = Math.sqrt (delta1)




x1 = (- (b) + raiz) / aaa

x2 = (- (b) - raiz) / aaa





if (a == 0)
    puts "This program should calculate only quadratic equations, due the value of a program ends here"

elsif (a =! 0)
    puts "The answers are #{x1} and #{x2} "

end




end


equation