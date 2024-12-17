# 21. Make a Program for an ATM. The program should ask the user for the amount of the withdrawal 
# and then inform how many bills of each amount will be provided. The available notes will be 1, 5, 10, 
# 50 and 100 reais. The minimum amount is 10 reais and the maximum is 600 reais. The program should 
# not worry about the amount of banknotes in the machine.

# a) Example 1: To withdraw the amount of 256 reais, the program provides two 100 bills,
# a 50 bill, a 5 bill and a 1 bill;
# b) Example 2: To withdraw the amount of 399 reais, the program provides three 100 bills,
# one 50 bill, four 10 bills, one 5 bill and four 1 bills.

def atm_withdraw
  puts 'Welcome to the ATM! There are notes $1, $5, $10, $50 and $100 available.'
  puts 'ATENTION: The minimum withdrawal amount is $10 and the maximum amount is $600.'
  puts 'How much would you like to withdraw?'

  withdraw = gets.chomp.to_i

  if withdraw <= 10 || withdraw >= 601
    puts 'Invalid! Please follow the ATM rules.'
    puts 'The minimum withdrawal amount is $10 and the maximum amount is $600.'
    puts 'How much would you like to withdraw?'
    return
  end

  hundred = withdraw%1000
  ten = withdraw%100
  unit = withdraw%10
  hundred_final = hundred - ten
  ten_final = ten - unit

  puts 'Please, wait for the banknotes to count.'

  if [100].include? hundred_final
    puts '1 note of $100'
  elsif [200].include? hundred_final
    puts '2 notes of $100'
  elsif [300].include? hundred_final
    puts '3 notes of $100'
  elsif [400].include? hundred_final
    puts '4 notes of $100'
  elsif [500].include? hundred_final
    puts '5 notes of $100'
  elsif [600].include? hundred_final
    puts '6 notes of $100'
  end

  if [10].include? ten_final
    puts '1 note of $10'
  elsif [20].include? ten_final
    puts '2 notes of $10'
  elsif [30].include? ten_final
    puts '3 notes of $10'
  elsif [40].include? ten_final
    puts '4 notes of $10'
  elsif [50].include? ten_final
    puts '1 note of $50'
  elsif [60].include? ten_final
    puts '1 note of $50 and 1 note of $10'
  elsif [70].include? ten_final
    puts '1 note of $50 and 2 note of $10'
  elsif [80].include? ten_final
    puts '1 note of $50 and 3 note of $10'
  elsif [90].include? ten_final
    puts '1 note of $50 and 4 note of $10'
  end

  if [1].include? unit
    puts '1 note of $1'
  elsif [2].include? unit
    puts '2 notes of $1'
  elsif [3].include? unit
    puts '3 notes of $1'
  elsif [4].include? unit
    puts '4 notes of $1'
  elsif [5].include? unit
    puts '1 note of $5'
  elsif [6].include? unit
    puts '1 note of $5 and 1 note of $1'
  elsif [7].include? unit
    puts '1 note of $5 and 2 note of $1'
  elsif [8].include? unit
    puts '1 note of $5 and 3 note of $1'
  elsif [9].include? unit
    puts '1 note of $5 and 4 note of $1'
  end
end

atm_withdraw
