# Make a Program for reading three partial notes of a student. The program must calculate the average
# achieved by student and present:
# 1. The message "Approved", if the average is greater than or equal to 7, with the respective average
# achieved;
# 2. The message "Fail", if the average is less than 7, with the respective average
# achieved;
# 3. The message "Approved with Distinction", if the average is equal to 10.
#!(not)
#regexr
#^-?[0-9]+$

def school_average
  puts 'Enters with 3 partial notes of a student to calculate the average.'

  note1 = gets
  note2 = gets
  note3 = gets

  r = /^[0-9]+$/

  note1 = note1.to_f if note1.match(r)
  note2 = note2.to_f if note2.match(r)
  note3 = note3.to_f if note3.match(r)

  unless note1.is_a? Numeric and note2.is_a? Numeric and note3.is_a? Numeric
    puts "Should be a Number or greater than 0!"
    return
  end


  final_note = (note1.to_f + note2.to_f + note3.to_f) / 3


  if final_note >= 0 && final_note < 7
    puts "Fail"
  elsif final_note > 7 && final_note < 10
    puts "Approved"
  elsif final_note == 10
    puts "Approved with Distinction"
  else
    puts "Invalid"
  end

end

school_average