#Average

def average_grade_in_school

    puts "What's your grade for the first quarter?"
    q1 = gets

    puts "What's your grade for the second quarter?"
    q2 = gets

    puts "What's your grade for the third quarter?"
    q3 = gets

    puts "What's your grade for the fourth quarter?"
    q4 = gets


    average_final = (q1.to_f+q2.to_f+q3.to_f+q4.to_f)/4

    puts "Your average is #{average_final}"


end

average_grade_in_school