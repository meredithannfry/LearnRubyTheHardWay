print "How old are you? "
# gets retrieves the input from console whilst chomp suppresses the new line.
# gets input from user and assigns to variable age.
age = gets.chomp()
print "How tall are you? "

#gets input from user and assigns to variable height.
height = gets.chomp()

print "How much do you weigh? "

#gets input from user and assigns to variable weight.
weight = gets.chomp()

#prints out the input you provided earlier that was saved to variables and then uses
#variable interpolation to output back in a string.
puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."