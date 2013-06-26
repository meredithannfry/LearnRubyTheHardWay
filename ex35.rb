# IF STATEMENT RULES
# Every if-statement must have an else.
# If this else should never be run because it doesn't make sense, then you must use a die function in the else that prints out an error message and dies, just like we did in the last exercise. This will find many errors.
# Never nest if-statements more than 2 deep and always try to do them 1 deep. This means if you put an if in an if then you should be looking to move that second if into another function.
# Treat if-statements like paragraphs, where each if,``elsif``,``else`` grouping is like a set of sentences. Put blank lines before and after.
# Your boolean tests should be simple. If they are complex, move their calculations to variables earlier in your function and use a good name for the variable.

# FOR LOOP RULES
# Use a while-loop only to loop forever, and that means probably never. This only applies to Ruby, other languages are different.
# Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over.

def prompt()
  print "> "
end

def gold_room()
  puts "This room is full of gold.  How much do you take?"

  prompt; next_move = gets.chomp 
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
end


def bear_room()
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif next_move == "taunt bear" and bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif next_move == "open door" and bear_moved
      gold_room()
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room()
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  prompt; next_move = gets.chomp

  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room()
  end
end

def dead(why)
  puts "#{why}  Good job!"
  Process.exit(0)
end

def start()
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  prompt; next_move = gets.chomp

  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulhu_room()
  else
    dead("You stumble around the room until you starve.")
  end
end

start()