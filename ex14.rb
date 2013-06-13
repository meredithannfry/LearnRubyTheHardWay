# first argument when running script ie. ruby ex14.rb Meredith is assigned to variable user. ie. Meredith.
user = ARGV.first
prompt = '> '

# again #{$0} special, represents file name.
puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."

#Here variable, user (Meredith) is added into the question
puts "Do you like me #{user}?"
#prints ">" to denote to user expect user input.
print prompt

# use STDIN.gets instead of gets as there is user in gets already.
# the default gets method would treat the first one as a file and read from that. 
# to read from the user's input you use STDIN.gets explicitly
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts "What day is it?"
print prompt
day = STDIN.gets.chomp()

#pushes all input into MESSAGE that is document syntax.
puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
Really. Is it #{day} already? Time flies.
MESSAGE