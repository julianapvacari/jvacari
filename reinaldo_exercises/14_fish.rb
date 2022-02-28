#Fisherman Story

def fisherman


    puts "How many kilos of fish today, João?"

    kg = gets.chomp.to_f
    
    fine = kg-50

    fine_final = fine * 4
    
    puts "The fine today is #{fine_final}"



end

fisherman