# Here's some new strange stuff, remember type it exactly.

#variable assignment
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# outputs string including the contents of variable
puts "Here are the days: ", days

# in this example there is a new line character (escape sequence)
# , forcing new line to print each month.
puts "Here are the months: ", months

# outputs entire contents I/O paragraph
# allows you to enter as much output as you want across several lines until you type
# the magic PARAGRAPH again to actually output to terminal.
puts <<PARAGRAPH
There's something going on here.
With the PARAGRAPH thing
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
PARAGRAPH