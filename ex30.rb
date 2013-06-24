people = 30
cars = 40
buses = 15

#greater than
if cars > people
  puts "We should take the cars."
#less than
elsif cars < people
  puts "We should not take the cars."
#all other possible expressions
else
  puts "We can't decide."
end

if buses > cars
  puts "That's too many buses."
elsif buses < cars
  puts "Maybe we could take the buses."
else
  puts "We still can't decide."
end

if people > buses
  puts "Alright, let's just take the buses."
else
  puts "Fine, let's stay home then."
end