# This function will break up words for us.
def break_words(stuff)
    words = stuff.split(' ')
    return words
end

# Sorts the words.
def sort_words(words)
    return words.sort() #Error 10: No such method as sorted (defined or inbuilt), use inbuilt string method on words.
end

# Prints the first word after popping it off.
def puts_first_word(words)
    word = words.shift() #Error 11: Again, no such method as 'poop', using inbuilt string method shift on words.
    puts word
end

# Prints the last word after popping it off.
def puts_last_word(words)
    word = words.pop() #Error 1: Missing closing parentheses to invoke pop method. 
    					 #Error 12: Cannot have a negatively-sized array
    puts word
end

# Takes in a full sentence and returns the sorted words.
def sort_sentence(sentence)
    words = break_words(sentence)
    return sort_words(words)
end

# Puts the first and last words of the sentence.
def puts_first_and_last(sentence)
    words = break_words(sentence)
    puts_first_word(words)
    puts_last_word(words)
end

# Sorts the words then prints the first and last one.
def puts_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    puts_first_word(words)
    puts_last_word(words)
end


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
POEM


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 6 #Error 18: Logic Error
puts "This should be five: %s" % five

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000 #Error 2: Division operator incorrect, should be /
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point) #Error 3: To assign variables use =, == means to equate the values.
												  #Error 6: Incorrectly named variable passed in, should be start_point instead of start-point.

puts "With a starting point of: %d" % start_point
puts "We'd have %d beans, %d jars, and %d crates." % [beans, jars, crates] #Error 4: Should be square braces instead of parentheses to pass multiple variables.

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %d beans, %d jars, and %d crabapples." % secret_formula(start_point) #Error 5: Missing closing parenthese
																					#Error 7: Incorrectly named variable again start_point

sentence = "All good things come to those who wait." #Error 18: Logic Error

#Error 8: Removed module (ex25.) name as it is locally defined.
words = break_words(sentence)
sorted_words = sort_words(words)

puts_first_word(words)
puts_last_word(words)
puts_first_word(sorted_words) #Error 13:Removed preceding . to method invocation as no class was defined prior. assume locally used.
puts_last_word(sorted_words)
sorted_words = sort_sentence(sentence)
print sorted_words #Error 14: Should be print, not prin
print "\n"

puts_first_and_last(sentence) #Error 15: Incorrectly spelt method invocation

puts_first_and_last_sorted(sentence) #Error 16: Incorrectly spelt variable, sentence
									 #Error 17: Incorrectly spelt method invocation
