str = "hel2!lo" 

count_letters = str.count "A-z"

count_numbers = str.scan(/[0-2]/).size

print "letters: #{count_letters}, digits: #{count_numbers};"

str_1 = "wicked .. !"

count_letters1 = str_1.count "A-z"

count_numbers1 = str_1.scan(/[0-10]/).size

puts "letters: #{count_letters1}, digits: #{count_numbers1}."


 