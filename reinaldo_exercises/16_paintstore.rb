#Paint Store

def paint_store


    puts "Area to be painted in m2:"

    area = gets.chomp.to_f

    var1 = area / 3

    puts "You will need #{var1}L of paint"

    var2 = (var1/18).ceil

    price = var2*80



    puts "You will need #{var2} paint cans by value R$#{price}"



end

paint_store