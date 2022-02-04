#Sallary per month

def sallary_per_month

    puts "How much do you earn per hour in your job?"
    
        h = gets

    puts "How many hours do you work per month?"

        d = gets



    total = h.to_f*d.to_f
    
    puts "The sallary per moth is $#{total}"


end

sallary_per_month