#IMCFM

def imc_f_m


    puts "How tall are you?"
    
    alt = gets.chomp.to_f
    
    
    ideal_m = (72.7*alt) - 58
    ideal_f = (62.1*alt) - 44.7
    
    puts "Ideal weight for mans is: #{ideal_m.to_i}"
    puts "Ideal weight for womans is: #{ideal_f.to_i}"
    
    
    
    end
    
    imc_f_m