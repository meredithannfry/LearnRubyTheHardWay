ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

#splits the string based on space and assigns to stuff array.
stuff = ten_things.split(' ')
# Short cut to use %w that allows for %w(hello world) is a shortcut for ["hello", "world"]. 
# Meaning it's a notation to write an array of strings seperated by spaces instead of commas and without quotes around them. 
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10
  # removes the last element in more_stuff and assigns it to next_one.
  next_one = more_stuff.pop()
  puts "Adding: #{next_one}"
  # adds an element (next_one) to stuff.
  stuff.push(next_one)
  puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

#now accessing the values at the specified index (remember arrays start at 0)
puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ') # what? cool!
#grabs elements at index 3 and 5 and joins them with # inbetween.
puts stuff.values_at(3,5).join('#') # super stellar!