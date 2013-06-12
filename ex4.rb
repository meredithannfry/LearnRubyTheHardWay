cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

puts  "THIS IS AN ERROR: ex4.rb:8:in `<main>': undefined local variable or method `car_pool_capacity' for main:Object (NameError)"
puts "Basically stating that you've attempted to use a variable that doesn't exist yet."
puts "Ruby you dont need to declare variables but you have to assign a value to them prior to referring to them."