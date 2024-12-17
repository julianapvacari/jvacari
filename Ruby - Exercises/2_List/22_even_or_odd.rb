# 22. Write a Program that asks for an integer and determines whether it is even or odd. Tip: use the
# modulus operator (remainder of division).

def even_or_odd
  puts 'Enters with a number and I will print if is even or odd:'
  number = gets

  r = /^[-0-9]+$/
  number1 = number.to_i if number.match(r)
  unless number1.is_a? Numeric
    puts 'Should be a Number!'
    return
  end

  if number1.even?
    puts 'This number is even.'
  elsif number1.odd?
    puts 'This number is ood.'
  end
end

even_or_odd
