# prints ... to the terminal
puts "I will now count my chickens:"

# calculates in order of operator precedence, */ being higher than that of +-
# calculates in readability as 25 + (30/6) 
puts "Hens", 25 + 30 / 6

# again calculates in order of operator precedence * then % (remainder) and finally -
# in readability 100 - (25 * 3) rem 4
# 100 - (75 rem 4)
# 100 - 3
# 97
puts "Roosters", 100 - 25 * 3 % 4

# prints to the terminal
puts "Now I will count the eggs:"

# in order of operator precedence 3 + 2 + 1 -5 + (4 rem 2) - (1 / 4) + 6
# 3 + 2 + 1 - 5 + 0 - 0 + 6
# 7
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

# prints and treats all as a string.
puts "Is it true that 3 + 2 < 5 - 7?"

# validates 5 < -2 => false 
puts 3 + 2 < 5 - 7

# prints string to terminal and calculates 5 
puts "What is 3 + 2?", 3 + 2

# prints string to terminal and calculates -2
puts "What is 5 - 7?", 5 - 7

# prints strings to terminal
puts "Oh, that's why it's false."
puts "How about some more."

# prints string and true from validation of is 5 greater than -2 
puts "Is it greater?", 5 > -2

# prints string and true as 5 is greater and or equal to -2
puts "Is it greater or equal?", 5 >= -2

# prints string and false as 5 is not less than or equal to -2
puts "Is it less or equal?", 5 <= -2

puts "refer to http://www.techotopia.com/index.php/Ruby_Operator_Precedence for full details on ruby operator precedence."




# Now floating numbers....
puts "Now let's look at floating numbers...."


# prints ... to the terminal
puts "I will now count my chickens:"

# calculates in order of operator precedence, */ being higher than that of +-
# calculates in readability as 25.0 + (30.0/6.0) 
puts "Hens", 25.0 + 30.0 / 6.0

# again calculates in order of operator precedence * then % (remainder) and finally -
# in readability 100.0 - (25.0 * 3.0) rem 4.0
# 100.0 - (75.0 rem 4.0)
# 100.0 - 3.0
# 97.0
puts "Roosters", 100.0 - 25.0 * 3.0 % 4.0

# prints to the terminal
puts "Now I will count the eggs:"

# in order of operator precedence 3 + 2 + 1 -5 + (4 rem 2) - (1 / 4) + 6
# 3.0 + 2.0 + 1.0 - 5.0 + 0 - 0.25 + 6
# 6.75
puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0

# prints and treats all as a string.
puts "Is it true that 3.0 + 2.0 < 5.0 - 7.0?"

# validates 5.0 < -2.0 => false 
puts 3.0 + 2.0 < 5.0 - 7.0

# prints string to terminal and calculates 5.0 
puts "What is 3.0 + 2.0?", 3.0 + 2.0

# prints string to terminal and calculates -2.0
puts "What is 5.0 - 7.0?", 5.0 - 7.0

# prints strings to terminal
puts "Oh, that's why it's false."
puts "How about some more."

# prints string and true from validation of is 5.0 greater than -2.0 
puts "Is it greater?", 5.0 > -2.0

# prints string and true as 5.0 is greater and or equal to -2.0
puts "Is it greater or equal?", 5.0 >= -2.0

# prints string and false as 5.0 is not less than or equal to -2.0
puts "Is it less or equal?", 5.0 <= -2.0

puts "refer to http://www.techotopia.com/index.php/Ruby_Operator_Precedence for full details on ruby operator precedence."
