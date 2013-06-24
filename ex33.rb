# while-loop will keep executing the code block under it as long as a boolean expression is True.

# To avoid, infinite loops:
# Make sure that you use while-loops sparingly. Usually a for-loop is better.
# Review your while statements and make sure that the thing you are testing will become False at some point.
# When in doubt, print out your test variable at the top and bottom of the while-loop to see what it's doing.


i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + 1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end