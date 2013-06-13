my_name = 'Zed A. Shaw'
my_age = 35 # not a lie
my_height = 74 # inches
my_weight = 180 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

# format strings allow you to embed variables in a string using a specialised format 
# sequence and then putting the variable at the end with syntax to indicate variable substitution.

# in each of the examples below we build the string before we use it and then the values 
# are provided after the %
# %s expects a string substitution
puts "Let's talk about %s." % my_name

# %d expects a number substitution.
puts "He's %d inches tall." % my_height
puts "He's %d pounds heavy." % my_weight
puts "Actually that's not too heavy."

# here we build a string that will interpolate two strings that values are provided at end.
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
# one in this instance...
puts "His teeth are usually %s depending on the coffee." % my_teeth

# this line is tricky, try to get it exactly right
# in this line for the 4th value we are actually putting the sum of the previous 3 numbers.
puts "If I add %d, %d, and %d I get %d." % [
    my_age, my_height, my_weight, my_age + my_height + my_weight]