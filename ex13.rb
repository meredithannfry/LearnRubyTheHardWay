# ARGV is a constant, called argument variable that will take in the inputs when you run
# ruby ex13.rb a b c
# #{$0} - represents special name of the file that doesn't need unpacking
# #{first} - first in ARGV
# #{second} - second in ARGV
# #{third} - third in ARGV
# ARGV unpacks by assigning each value to variable associated below, rather than holding it.
first, second, third = ARGV 

# if less than 3 inputs are given, then it outputs nothing but the string.
# ie. Your second variable is: 

# if you put more than 3 inputs, then it simply ignores the extra input.
puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"