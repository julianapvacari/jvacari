#Paint store 2


def paint_store


puts "Area to be painted in m2:"

area = gets.chomp.to_f

paint = area / 6      #L of paint necessary

#puts "You will need #{paint}L of paint"


cans = (paint / 18).ceil  #80$ cada
cans_total = cans*80

gallons = (paint / 3.6).ceil   #$25 cada
gallons_total = gallons*25


puts "Buying only paint cans you will need #{cans} cans by the price R$#{cans_total}"

puts "Buying only paint gallons you will need #{gallons} gallons by the price R$#{gallons_total}"


#---------------------------------Part 2


l = (area/6) #L of paint necessary

cans1 = 16.2
gallons1 = 3.24



cans2 = (l/cans1).floor


  rest = l - (cans2*cans1)


gallons2 = (rest/gallons1).ceil



puts "Using cans and gallons of paint for less waste you will need #{cans2} cans and #{gallons2} gallons."







end

paint_store