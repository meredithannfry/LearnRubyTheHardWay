#Remember: ordinal == ordered, 1st; cardinal == cards at random, 0.
#The animal at 1. The 3rd animal. The 1st animal. The animal at 3. The 5th animal. The animal at 2. The 6th animal. The animal at 4.

#For each of these, write out a full sentence of the form: "The 1st animal is at 0 and is a bear." 
#Then say it backwards, "The animal at 0 is the 1st animal and is a bear."
animals = ['bear', 'python', 'peacock','kangaroo', 'whale', 'platypus']

def ordinal_position(num)
	if num == 1
		return "1st"
	elsif num == 2
		return "2nd"
	elsif num == 3
		return "3rd"
	elsif num == 4 || num == 5 || num == 6
		return "#{num}th"
	end
end


for i in animals
	
	cardinal = animals.index(i)
	ordinal = ordinal_position(cardinal+1)
	
	# The 1st animal is at 0 and is a bear.
	puts "The #{ordinal} is at #{cardinal} and is a #{i}."
	
	# The animal at #{cardinal} is the #{ordinal} animal and is a bear.
	puts "The animal at #{cardinal} is the #{ordinal} animal and is a #{i}." 
end

