# \t is escape sequence to tab in.
tabby_cat = "\tI'm tabbed in."

# \n is escape sequence for new line.
persian_cat = "I'm split\non a line."

# \ is the escape sequence for a backslash.
backslash_cat = "I'm \\ a \\ cat."

# document syntax used and assigned to variable fat_cat.
fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat