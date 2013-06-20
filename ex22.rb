require 'CSV'

#Uppercase variables are constants - they are considered static and so should never change
INVALID = "invalid, please try again"

#Global variables are denoted by $ - they are accessible anywhere
$lesson_no = 1 
$lesson_title = "PUT & PRINT"
#$lesson_header = "\n\nLESSON #$lesson_no - #$lesson_title\n\n" 
#$lesson_header_a= "\n\nLESSON %s - %s \n\n" % [$lesson_no, $lesson_title]

def prepare_lesson(number)
	if number == "1"
		$lesson_no= "1"
		$lesson_title="PUT & PRINT"
		return "one"
	elsif number == "2"
		$lesson_no=number
		$lesson_title="COMMENTS"
		return "two"
	elsif number == "3"
		$lesson_no=number
		$lesson_title="NUMBERS & OPERATOR PRECEDENCE"
		return "three"
	elsif number == "4"
		$lesson_no=number
		$lesson_title="VARIABLES"
		return "four"
	elsif number == "5"
		$lesson_no=number
		$lesson_title="FORMAT STRINGS"
		return "five"
	elsif number == "6"
		$lesson_no=number
		$lesson_title="FORMAT STRINGS COMPLEXITY"
		return "six"
	elsif number == "7"
		$lesson_no=number
		$lesson_title="MORE PRACTICE ON PRINT AND PUTS"
		return "seven"
	elsif number == "8"
		$lesson_no=number
		$lesson_title="PRINTING & FORMAT STRINGS"
		return "eight"
	elsif number == "9"
		$lesson_no=number
		$lesson_title="MORE PRINTING"
		return "nine"
	elsif number == "10"
		$lesson_no=number
		$lesson_title="ESCAPE SEQUENCES"
		return "ten"
	elsif number == "11"
		$lesson_no=number
		$lesson_title="OBTAINING USER INPUT"
		return "eleven"
	elsif number == "12"
		$lesson_no=number
		$lesson_title="USING LIBRARIES"
		return "twelve"
	else 
		return INVALID
	end
end



def lesson_one()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	puts "We learn't the difference between puts and prints!"
	puts "'puts' will add a new line character"
	puts "'print' will not add a new line character"
	puts "Now put it into print...  :-)  \n\n"
	puts "puts 'I can't wait to go to melbourne!' returns...."
	puts "I can't wait to go to melbourne!"
	print "print 'I can't wait to go to melbourne!' returns...."
	print "I can't wait to go to melbourne!\n\n"
	
	continue_lessons()
end

def lesson_two()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
 	puts "Anything after becomes # becomes a comment and is not executed by ruby"
 	puts "You can do multiline comments but ruby developers seem to always do # even for" 
 	puts "the multiline comments..."
 	puts "Guess it comes down to individual between =begin <insert multi-lines here> =end  or #"
 	puts "Anyhoooo...comments are obviously for readability, from 1 developer to another...."
 	puts "They are always good to remember your train of thought!"
 	puts "And a given, if you are Ten Second Tom or Dory...."
 	puts "Hi I'm Dory!.....Hi I'm Dory!....\n" * 10 
 	puts "Yep, Dory rocks!\n\n"
 	
 	continue_lessons()
end

def lesson_three()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	puts "We learn't all about numbers (int & floats) and math operators (including precedence)."
	puts "Ruby operator precedence you ask? Refer to the opened browser\n\n"
	system("open", "http://www.techotopia.com/index.php/Ruby_Operator_Precedence")
	
	continue_lessons()
end

def lesson_four()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	spiel="A variable is just a place to store a value for reuse"
	puts "The variable 'spiel' contents: #{spiel}."
	puts "You can concatenate variables:"
	more_spiel = "It can contain numbers etc too"
	more_spiel_again = 50
	puts "#{spiel} #{more_spiel} #{more_spiel_again}\n\n"
	
	continue_lessons()  
end

def lesson_five()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_five_info= "Lesson 5 is all about FORMAT STRINGS that allow you to embed variables inside a string using a special format sequence.\n"
	lesson_five_info+="You then put the variables at the end with special syntax to say to the Ruby God substitute here please God of Ruby!\n"
	lesson_five_info+="Here is one variable substitution format: Let's talk about %s. % my_name \n"
	lesson_five_info+="Here is multi-variable substitution: If I add %d, %d, I get %d. % [my_first_var, my_second_var, my_first_var + my_second_var]\n"
    lesson_five_info+= "So %d represents format number whilst %s represents a format string.\n"
	
	puts lesson_five_info
	
	my_first_var=1
	my_second_var=2
	
	puts "For the previous multi-variable substitution example this plays out as: If I add %d, %d, I get %d." % [my_first_var, my_second_var, my_first_var + my_second_var]
	
	continue_lessons()
end

def lesson_six()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_six_info= "A simple lesson demonstrating you can nest variables in variables...\n\n"
	puts lesson_six_info
	
	continue_lessons()
end

def lesson_seven()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	puts "nothing yet!"
	
	continue_lessons()
end

def lesson_eight()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	puts "nothing yet"
	
	continue_lessons()
end

def lesson_nine()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	puts "nothing yet"
	
	continue_lessons()
end

def lesson_ten()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_ten_info="To force a new line mid-string you can add \\n into your string\n"
	lesson_ten_info+="Such as, I am all \n in one string \n"
	lesson_ten_info+="To add a special character such as a blackslash into a string you add a second '\\' to it  \n"
	lesson_ten_info+="Such as, I am a blackslack: \\"
	lesson_ten_info+="\nTo add a single-quote or double-quote in a string, \n you use escape a double-quote or single-quote with backslash\n"
	lesson_ten_info+="Such as, \t I am not even 5'0\" tall :-( \n\n"
	puts lesson_ten_info
	
	continue_lessons()
end

def lesson_eleven()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_eleven_info="To obtain user input its as simple as 'gets.chomp()' \n and of course you use the output to program logic"	
	lesson_eleven_info+="\nLets try an example..."
	puts lesson_eleven_info	
	
	puts "Do you like Ruby? "
	ruby_lover = gets.chomp()
	
	liar=false
	
	while !ruby_lover.downcase.start_with?('y')  do
   		puts "I don't think I heard you right, do you like Ruby? "
		ruby_lover = gets.chomp()
		liar = true
	end
	
	if !liar 
		puts "You are a ruby enthusiast!\n\n"
	else 
		puts "I sense you are lying to me, but maybe you just saw the light.\n\n"
	end
	
	continue_lessons()
end

def lesson_twelve()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_twelve_info="Why write code when someone has already done the hard work\n"
	lesson_twelve_info+="Libraries are away to leverage off existing code written for performing\n"
	lesson_twelve_info+="Stock-standard actions just as reading or writing to a file"
	lesson_twelve_info+="To simply use a library you add require 'library_name_goes_here'"
	lesson_twelve_info+="If you intend to extend a library you add include 'library_name_goes_here'"

	
	#open a file 
	CSV.open("test.csv", "w") do |csv|
  		csv << ["buddy", "is", "super", "cute"]
  		csv << ["pete", "is", "a", "wombat", "!"]
  		csv << ["ruby", "is", "so", "intuitive", "and", "elegant"]
	end

	arr_of_arrs = CSV.read("test.csv")
	puts arr_of_arrs	
	
	continue_lessons()
end

def lesson_thirteen()
#boring
end

def lesson_fourteen()
#boring
end

def lesson_fifteen()
#boring
end

def lesson_sixteen()
#boring
end


def continue_lessons
	puts "Do you want to do another lesson (Y for Yes or Q to Quit)?"
	another_choice = STDIN.gets()
	if another_choice.upcase.start_with?('Y')
		lesson_refresh()
	else 
		puts "Thanks for playing, bye bye :-)"
	end

end


def lesson_refresh()
	which_lesson = "Which lesson do you want a quick refresh on? (1-11)"
	puts which_lesson
	$lesson_no = gets.chomp()
	chosen=prepare_lesson("#$lesson_no")
	
	if "#$lesson_no" == "1"
		lesson_one()
	elsif "#$lesson_no" =="2"
	 	lesson_two()
	elsif "#$lesson_no" =="3"
	 	lesson_three()
	elsif "#$lesson_no" =="4"
	 	lesson_four()
	elsif "#$lesson_no" =="5"
	 	lesson_five()
	elsif "#$lesson_no" =="6"
	 	lesson_six()
	elsif "#$lesson_no" =="7"
	 	lesson_seven()
	elsif "#$lesson_no" =="8"
	 	lesson_eight()
	elsif "#$lesson_no" =="9"
	 	lesson_nine()
	elsif "#$lesson_no" =="10"
	 	lesson_ten()
	elsif "#$lesson_no" =="11"
	 	lesson_eleven()
	elsif "#$lesson_no" =="12"
	 	lesson_twelve()
	elsif "#$lesson_no" == INVALID
		 puts "Invalid entry!!"
	end

end

lesson_refresh()

