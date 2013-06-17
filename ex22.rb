require 'CSV'

puts "I think I'll write this 3 or 4 different ways"

#open a file 
CSV.open("test.csv", "w") do |csv|
  csv << ["buddy", "is", "super", "cute"]
  csv << ["pete", "is", "a", "wombat", "!"]
  csv << ["ruby", "is", "so", "intuitive", "and", "elegant"]
end

arr_of_arrs = CSV.read("test.csv")

puts arr_of_arrs

def lesson_one()
	puts "\n\nLESSON ONE......\n\n"
	puts "We learn't the difference between puts and prints!"
	puts "'puts' will add a new line character"
	puts "'print' will not add a new line character"
	puts "Now put it into print...  :-)  \n\n"
	puts "puts 'I can't wait to go to melbourne!' returns...."
	puts "I can't wait to go to melbourne!"
	print "print 'I can't wait to go to melbourne!' returns...."
	print "I can't wait to go to melbourne!"
end

#invoking lesson 1....
lesson_one()

puts "NEXT!..."

def lesson_two()
 	puts "\n\nLESSON TWO......\n\n"
 	puts "We learn't the value in commenting...otherwise rather uneventful :-("
 	puts "Anything after becomes # becomes a comment and is not executed by ruby"
 	puts "You can do multiline comments but ruby developers seem to always do # even for" 
 	puts "the multiline comments..."
 	puts "Guess it comes down to individual between =begin <insert multi-lines here> =end  or #"
 	puts "Anyhoooo...comments are obviously for readability, from 1 developer to another...."
 	puts "They are always good to remember your train of thought!"
 	puts "And a given, if you are Ten Second Tom or Dory...."
 	puts "Hi I'm Dory!.....Hi I'm Dory!....\n" * 10 
 	puts "Yep, Dory rocks!"
end

#invoking lesson 2...
lesson_two()

puts "NEXT!..."

def lesson_three()
#boring
end

#invoking lesson 3...
#lesson_three()

#puts "NEXT!..."

def lesson_four()
#boring
end

#invoking lesson 4...
#lesson_four()

#puts "NEXT!..."

def lesson_five()
#boring
end

#invoking lesson 5...
#lesson_five()

#puts "NEXT!..."

def lesson_six()
#boring
end

#invoking lesson 6...
lesson_six()
#puts "NEXT!..."

def lesson_seven()
#boring
end

#invoking lesson 7...
#lesson_seven()
#puts "NEXT!..."

def lesson_eight()
#boring
end

#invoking lesson 8...
#lesson_eight()
#puts "NEXT!..."

def lesson_nine()
#boring
end

#invoking lesson 9...
#lesson_nine()
#puts "NEXT!..."

def lesson_ten()
#boring
end

#invoking lesson 10...
#lesson_ten()
#puts "NEXT!..."

def lesson_eleven()
#boring
end

#invoking lesson 11...
#lesson_eleven()
#puts "NEXT!..."

def lesson_twelve()
#boring
end

#invoking lesson 12...
#lesson_twelve()
#puts "NEXT!..."

def lesson_thirteen()
#boring
end

#invoking lesson 13...
#lesson_thirteen()
#puts "NEXT!..."

def lesson_fourteen()
#boring
end

#invoking lesson 14...
#lesson_fourteen()
#puts "NEXT!..."

def lesson_fifteen()
#boring
end

#invoking lesson 15...
#lesson_fifteen()
#puts "NEXT!..."

def lesson_sixteen()
#boring
end
#invoking lesson 16...
#lesson_sixteen()
#puts "NEXT!..."