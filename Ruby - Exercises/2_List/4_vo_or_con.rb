#4. Write a program that checks whether a typed letter is a vowel or a consonant.

def vow_con

puts "Enters the word and I will show you if is vowel or consonant :D"

word = gets.chomp

STDOUT.flush


if (word == "a" || word == "A")
  puts "This word is vowel!"

elsif (word == "e" || word == "E")
  puts "This word is vowel!"

elsif (word == "i")
    puts "This word is vowel!"

elsif (word == "o")
    puts "This word is vowel!"

elsif (word == "u")
    puts "This word is vowel!"


else 

    puts "This word is consoant!"
      
end



end

vow_con