class DealOrNoDeal

  def initialize(chosen_case)
    @quips = [
      "Just too greedy weren't you!",
      "You could've been rich!",
      "Well I guess you can use the case to live out of."
    ]
   	
   	#initialise number of cases into an array.
   	cases = (1..26).to_a
    
    @chosen_case = chosen_case
    
    @case_values= ["50c", "$1", "$2", "$5", "$10", "$20", "$50", "$100", "$150", "$200", "$250", "$500", "$750", "$1000", \
				 "$2000", "$3000", "$4000", "$5000", "$10000", "$15000", "$20000", "CAR", "$50000", "$75000", "$100000", \
				 "$200000"]
				 
	@case_values.shuffle!
	
	@no_cases_left = 25
	@current_bank_offer = 0
	@current_round = "Round 1"
	
	#number of rounds and the number of cases they must open before a bank offer is made
	@rounds = { "Round 1" => 6, "Round 2" => 5, "Round 3" => 4, "Round 4" => 3, "Round 5" => 2, "Round 6-10" => 1}
	
	#cheat()
	
  end

  def cheat
  	puts "Remember you only ever cheat yourself...but alas here you go..."
  	puts @case_values
  end
  
  def prompt()
    print "> "
  end

  def bank_offer()
  
  bank_balance=0
  
  	@case_values.each do |x| 
  		if x != "OPENED" || x != "CAR"
  			if x == "50c"
  				bank_balance+=0.5
  			else
  				num = x.gsub(/[^0-9]/, '')
  				bank_balance+=num.to_i
  			end
  		end
  	end
  	
  	@no_cases_left -=1
  	
  	@current_bank_offer = bank_balance/@no_cases_left
  	puts "Bank offer is $%s" % @current_bank_offer
  	
  	continue_play()
  	  	
  end

  def play()
  
  	puts "Please select a case to play other than case number %s" % @chosen_case
  	
  	case_number = gets.chomp()
  	
  	if case_number != @chosen_case && case_number.to_i<=26 && case_number.to_i>=1
  		case_value=@case_values[case_number.to_i-1]
  	    puts "You've chosen to open case number %s that has a value of %s" % [case_number, case_value]
  		
  		@case_values[case_number.to_i-1] = "OPENED"
  		#puts @case_values
  	
  		bank_offer()
  	else
  		puts "sorry that is the case you selected to play, you cannot chose to open it at this stage."
  	end
   	
  end
	
  
  def death()
    puts @quips[rand(@quips.length())]
    Process.exit(1)
  end
  
  def deal()
  	  puts "You dealed on $%s" % @current_bank_offer
      puts "But let's see what you had in your case you chose, case %s had a value of %s" % [@chosen_case, @case_values[@chosen_case.to_i-1]] 
	  my_case_value = @case_values[@chosen_case.to_i-1].gsub(/[^0-9]/, '')
	  
	  puts "Bank offer was $%s " % @current_bank_offer
	  puts "Your case had $%s " % my_case_value
	  
	  if @current_bank_offer>=my_case_value.to_i
	  	puts "Dang, baby brought home the bacon!"
	  else
	  	puts "Just another bank willing to screw you :-("
	  end
  end
  
  def no_deal()
  	puts "No Deal! Bring the bacon home baby!" 
  	play()
  end

  def continue_play()
  
    puts "You have %s cases left to open. " % @no_cases_left
	puts "Do you want to continue playing on? D for Deal or N for No Deal"
	
	puts "The following case values are still in play: "
	
    @case_values.each do |x| 
  		if x != "OPENED"
  			print "\t" +  x 
  		end
  	end
  	
  	puts
  	
    prompt()
    action = gets.chomp()

    if action == "D"
    	deal()
	  
    elsif action == "N"
      	no_deal()
    else
      	death()
    end
  end

end

puts "DEAL OR NO DEAL"
puts  "The game of chance and calculated risk."
puts "The cases have been allocated. Now it's just upto you to make the right choices"
puts "Select the lucky case with 200K in it. You have 1-26 to select from:"

chosen_case = gets.chomp()

a_game = DealOrNoDeal.new(chosen_case)
a_game.play()