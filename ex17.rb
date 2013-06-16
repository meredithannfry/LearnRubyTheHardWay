# takes two arguments, the file to copy, the file to copy to.
from_file, to_file = ARGV 
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
#reading the input file
input = File.open(from_file)
indata = input.read()

#determines length of the file.
puts "The input file is #{indata.length} bytes long"

#
puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

#opens file to copy to, in write-mode, then writes to it.
output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()