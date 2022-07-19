#19. Write a program that reads an integer smaller than 1000 and prints the amount of hundreds,
# tens and units thereof.
# - Observing the plural terms, the placement of the "and", the comma, among others. Example:
# - 326 = 3 hundreds, 2 tens and 6 ones
# - 12 = 1 ten and 2 units Test with: 326, 300, 100, 320, 310,305, 301, 101, 311, 111, 25,
# 20, 10, 21, 11, 1, 7 and 16.
#Identacao

def less_than


  puts "Enters the number less then 1000 and I will show the hundreds, tens and units thereof."
  number = gets.chomp.to_i

if number <= 0
  puts "Should be a number or a number greater than 0!"

  return

end



  m = number%1000

  dez = number%100

  unit = number%10


  if (number >= 1000)
    puts "The number should be less than 1000!"

    return

  end



  dezf = (dez - unit)/10

  m1 = (m - dez)/100




  #cent
  if [1].include? m1
    puts "#{m1} hundred."

  elsif [2, 3, 4, 5, 6, 7, 8, 9].include? m1
    puts "#{m1} hundreds."

  else
    puts ""


  end


  #dez
  if [1].include? dezf
    puts "#{dezf} ten."

  elsif [2, 3, 4, 5, 6, 7, 8, 9].include? dezf
    puts "#{dezf} tens"

  else 
    puts ""

  end



  #unit
  if [1].include? unit
    puts "#{unit} unit."

  elsif [2, 3, 4, 5, 6, 7, 8, 9].include? unit
    puts "#{unit} units."

  else 
      ""
  
  end


end


less_than


