# takes first input, assigns to filename 
# when running ruby ex15.rb such as ruby ex15.rb ex15_sample.txt
filename = ARGV.first

prompt = "> "

# this will fail if the first input did not represent a valid file. 
# ie. you entered nothing or it was not a valid filename.
# if a valid file, it assigns the stream to txt.
txt = File.open(filename)

puts "Here's your file: #{filename}"
# if it is a valid file, it will now output the contents of the stream.
# using the read method on txt as it has returned file which has methods on it you can
# leverage.
puts txt.read()
# closes the file stream. Important to close files once your done with them obviously.
txt.close()

puts "I'll also ask you to type it again:"
print prompt
# this time the file name hopefully entered is assigned to file_again variable.
file_again = STDIN.gets.chomp()

# again if a valid file, it assigns the stream to txt_again
txt_again = File.open(file_again)

# it now will output the contents of the stream
puts txt_again.read()

txt_again.close()
