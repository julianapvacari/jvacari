# 16. Make a program for a paint store. The program should ask for the size in square meters
# of the area to be painted. Assume that the paint coverage is 1 liter for every 3 square meters and
# that the paint is sold in 18-liter cans, which cost R$ 80.00. Inform the user of quantities of
# paint cans to be purchased and the total price

def paint_store


    puts "Area to be painted in m2:"

    area = gets.chomp.to_f

    var1 = area / 3

    # puts "You will need #{var1}L of paint"

    var2 = (var1/18).ceil

    price = var2*80



    puts "You will need #{var2} paint cans by value R$#{price}"



end

paint_store