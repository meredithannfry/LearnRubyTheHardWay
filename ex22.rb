require 'CSV'

#Uppercase variables are constants - they are considered static and so should never change
INVALID = "Invalid entry!"
BORING = "Nothing to see here...move along now"

#Global variables are denoted by $ - they are accessible anywhere
$lesson_no = 1 
$lesson_title = "PUTS & PRINT"
$lesson_desc = "Simple demo of the difference between puts and print"
#$lesson_header = "\n\nLESSON #$lesson_no - #$lesson_title\n\n" 
#$lesson_header_a= "\n\nLESSON %s - %s \n\n" % [$lesson_no, $lesson_title]

def prepare_lesson(number)
	if number == "1"
		$lesson_no=number
		$lesson_title="PUTS & PRINT"
		$lesson_desc= "Simple demo of the difference between puts and print"
		return "one"
	elsif number == "2"
		$lesson_no=number
		$lesson_title="COMMENTS"
		$lesson_desc = "#Comments are words that aren't interpreted by the compiler."
		return "two"
	elsif number == "3"
		$lesson_no=number
		$lesson_title="NUMBERS & OPERATOR PRECEDENCE"
		$lesson_desc= "Opens up a browser page that details operator precedence."
		return "three"
	elsif number == "4"
		$lesson_no=number
		$lesson_title="VARIABLES"
		$lesson_desc= "Merely, a container to store a value for reuse"
		return "four"
	elsif number == "5"
		$lesson_no=number
		$lesson_title="FORMAT STRINGS"
		$lesson_desc="Used to embed variables into a string in a special format."
		return "five"
	elsif number == "6"
		$lesson_no=number
		$lesson_title="FORMAT STRINGS COMPLEXITY"
		$lesson_desc= "Building on knowledge of format strings"
		return "six"
	elsif number == "7"
		$lesson_no=number
		$lesson_title="MORE PRACTICE ON PRINT AND PUTS"
		$lesson_desc = BORING
		return "seven"
	elsif number == "8"
		$lesson_no=number
		$lesson_title="PRINTING & FORMAT STRINGS"
		$lesson_desc = BORING
		return "eight"
	elsif number == "9"
		$lesson_no=number
		$lesson_title="MORE PRINTING"
		$lesson_desc = BORING
		return "nine"
	elsif number == "10"
		$lesson_no=number
		$lesson_title="ESCAPE SEQUENCES"
		$lesson_desc= "Used to insert meaningful keywords in ruby into strings, rather than as their command."
		return "ten"
	elsif number == "11"
		$lesson_no=number
		$lesson_title="OBTAINING USER INPUT"
		$lesson_desc="Pop quiz: are you truly a ruby lover?"
		return "eleven"
	elsif number == "12"
		$lesson_no=number
		$lesson_title="USING LIBRARIES"
		$lesson_desc= "Practice opening, writing to and reading a CSV, using CSV library"
		return "twelve"
	elsif number == "13"
		$lesson_no=number
		$lesson_title="ARGV - ARGUMENT VARIABLE"
		$lesson_desc="ARGV is used to pass parameters to your script as you invoke it."
		return "thirteen"
	elsif number=="14"
		$lesson_no=number
		$lesson_title="ARGV & STDIN.gets"
		$lesson_desc = BORING
		return "fourteen"
	elsif number=="15"
		$lesson_no=number
		$lesson_title="READING FILES"
		$lesson_desc = BORING
		return "fifteen"
	elsif number=="16"
		$lesson_no=number
		$lesson_title="READING AND WRITING TO FILES"
		$lesson_desc = "We create, read and write to a file based on user input"
		return "sixteen"
	elsif number=="17"
		$lesson_no=number
		$lesson_title="USING FILE CLASS' METHODS"
		$lesson_desc="We obtain a file name and keyword that the user wishes to search "
		$lesson_desc+="for in the file and then output line number & content that matches"
		return "seventeen"
	elsif number=="18"
		$lesson_no=number
		$lesson_title="FUNCTIONS"
		$lesson_desc="Simple description of why we use methods and how to define and invoke"
		return "eighteen"
	elsif number=="19"
		$lesson_no=number
		$lesson_title="MORE FUNCTIONS"
		$lesson_desc="Lotto Game: User specifies how many supps and balls and I pick their numbers for them randomly."
		return "nineteen"
	elsif number=="20"
		$lesson_no=number
		$lesson_title="WORKING WITH FUNCTIONS & FILES"
		$lesson_desc = BORING
		return "twenty"
	elsif number =="21"
		$lesson_no=number
		$lesson_title="FUNCTIONS WITH OUTPUT"
		$lesson_desc = BORING
		return "twenty_one"
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
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_thirteen_info="Argument variables (ARGV) is a way to pass parameter when invoking your script.\n"
	lesson_thirteen_info+="Unpacking ARGV (for use in your script) is shown as 'param1, param2, param3 = ARGV' \n"
	lesson_thirteen_info+="Always unpacked in order too ie. that which is entered first, becomes param1 so on..\n"
	lesson_thirteen_info+="Notice ARGV is all in CAPS so it is a CONSTANT\n"
	lesson_thirteen_info+="Thus why you unpack so you are free to use them as you please locally in your script via param1 etc.\n"
	lesson_thirteen_info+="Note: $0 is always the name of the script and doesn't need unpacking.\n"
	puts lesson_thirteen_info
	
	continue_lessons()
end

def lesson_fourteen()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_fourteen_info="When using ARGV and requiring input from user use STDIN.gets() rather than gets()"
	puts lesson_fourteen_info
	
	continue_lessons()
end

def lesson_fifteen()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	
	continue_lessons()
end

def lesson_sixteen()
	prompt ="> "
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	puts "Please enter a relative file name you wish to create and read from:"
	print prompt	
	filename = STDIN.gets.chomp()
	
	
	puts "We're going to erase #{filename}."
	puts "If you don't want that, hit CTRL-C (^C)."
	puts "If you do want that, hit RETURN."

	print prompt
	STDIN.gets

	
	puts "Opening the file..."
	target = File.open(filename, 'w')
	

	puts "Truncating the file.  Goodbye!"
	target.truncate(target.size)

	puts "Now I'm going to ask you for three lines."

	print "line 1: "; line1 = STDIN.gets.chomp()	
	print "line 2: "; line2 = STDIN.gets.chomp()
	print "line 3: "; line3 = STDIN.gets.chomp()

	puts "I'm going to write these to the file."

	target.write(line1)
	target.write("\n")
	target.write(line2)
	target.write("\n")
	target.write(line3)
	target.write("\n")

	puts "And finally, we close it."
	target.close()
	
	continue_lessons()
end

def lesson_seventeen()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	
	def keyword_match(keyword, filename)
		regularexpression= Regexp.new(keyword)
		linenumber=0
		File.open filename, 'r' do |f|
			f.each_line do |line|
				linenumber += 1
				puts "MATCH FOUND at #{linenumber}: #{line}" if regularexpression =~line
			end
		end
	end
	
	lesson_seventeen_info= "In this exercise, we are going to return the line number\n"
	lesson_seventeen_info+="and line contents of a file that match a phrase of our choice.\n"
	lesson_seventeen_info+="Enter the file that you wish to search in first:"
	puts lesson_seventeen_info 
	
	filename = STDIN.gets.chomp()
	
	if !File.exist?(filename)
		puts "This file doesn't exist!"
	else
		puts "Now give me the phrase you wish to search on in the file: "
		keyword = STDIN.gets.chomp()
		keyword_match(keyword, filename)		
	end
			
	continue_lessons()
end

def lesson_eighteen()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	lesson_eighteen_info= "Where we finally learnt about functions"
	lesson_eighteen_info+= "Functions can be thought of as a reusable code block that can"
	lesson_eighteen_info+= "executed as many times as you want to call it."
	lesson_eighteen_info+= "A function is denoted by: \n"
	lesson_eighteen_info+= "def my_method(*args) \n"
	lesson_eighteen_info+= "   #anything written in here is locally defined and accessible \n"
	lesson_eighteen_info+= "   #arg1, arg2= args \n"
	lesson_eighteen_info+="end \n"
	lesson_eighteen_info+="To call a method you simply write: my_method() \n"
	lesson_eighteen_info+="You can pass command line arguments (ARGV-equivalent) as above."
	
	puts lesson_eighteen_info
	
	continue_lessons()
end

def lesson_nineteen()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	
	puts "Lets pick the lotto/powerball numbers for next week. Pick how many balls (then we'll do supps):"
	balls = STDIN.gets.chomp()
	
	puts "Now pick the number of supps or power balls"
	
	supps = STDIN.gets.chomp()
	
	puts "Lets win lotto!"
	
	puts "The winning balls will be : " + balls.to_i.times.map{rand(40)}.to_s
	puts "And the winning supps: " + supps.to_i.times.map{rand(40)}.to_s
	
	puts "HOLY FREAKING SPACE BALLS we could be rich! \n Pay dirt! That's right I want a cut if 'we' win! \n Good Luck!"
	continue_lessons()
end

def lesson_twenty()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	
	continue_lessons()
end

def lesson_twenty_one()
	puts "\n\nLESSON #$lesson_no - #$lesson_title\n\n"
	
	continue_lessons()
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
	
	list_of_lessons = "These are the lessons available to you: \n"
	
	for i in 1..19
		prepare_lesson("#{i}")
		list_of_lessons+= "#$lesson_no - #$lesson_title - #$lesson_desc \n"
	end
	
	puts list_of_lessons
	
	which_lesson = "Which lesson do you want a quick refresh on? (Specify 1 - 19)"
	puts which_lesson
	
	$lesson_no = gets.chomp()
	chosen=prepare_lesson("#$lesson_no")
	
	if chosen != INVALID
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
		elsif "#$lesson_no" =="13"
	 		lesson_thirteen()
		elsif "#$lesson_no" =="14"
	 		lesson_fourteen()
		elsif "#$lesson_no" =="15"
	 		lesson_fifteen()
		elsif "#$lesson_no" =="16"
	 		lesson_sixteen()
		elsif "#$lesson_no" =="17"
	 		lesson_seventeen()
		elsif "#$lesson_no" =="18"
	 		lesson_eighteen()
		elsif "#$lesson_no" =="19"
	 		lesson_nineteen()
		elsif "#$lesson_no" =="20"
	 		lesson_twenty()
		elsif "#$lesson_no" =="21"
	 		lesson_twenty_one()
	 	end
	else 
		puts INVALID
		puts "Signing you off buster!"
	end
end

lesson_refresh()

