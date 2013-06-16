# take first command input and assign to input_file variable.
input_file = ARGV[0]


# functions are defined: 
#read and puts entire file.
def print_all(f)
  puts f.read()
end


def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

# puts out line number and content of that line.
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

# opens the file and assigns to current_file variable.
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

#reads and outputs entire file.
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

#reverts to start of file.
rewind(current_file)

puts "Let's print three lines:"

# variable current_line is tracking the line number by increasing by 1 each time. Better in a for loop to end of file.
current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)