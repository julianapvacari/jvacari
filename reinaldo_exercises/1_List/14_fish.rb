#14. João Papo-de-Pescador, a good man, bought a microcomputer to control the
#daily income from your work. Every time he brings in a weight of fish greater than the
#established by the fishing regulations of the state of São Paulo (50 kilos) must pay a fine
#of R$ 4.00 per excess kilo. John needs you to write a program that reads the
#variable weight (fish weight) and calculate the excess. Write in the excess variable the amount of
#kilos beyond the limit and in the fine variable the amount of the fine that João must pay. print the data
#of the program with the appropriate messages

def fisherman


    puts "How many kilos of fish today, João?"

    kg = gets.chomp.to_f
    
    fine = kg-50

    fine_final = fine * 4
    
    puts "The fine today is #{fine_final}"



end

fisherman