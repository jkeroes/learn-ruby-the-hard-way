input_file = ARGV[0]

def print_all(f)
	puts f.read()
end

def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

# Extra Credit 1: Go through and write English comments for each line to
# understand what's going on.
#
# => pass.

# Extra Credit 2: Each time print_a_line is run you are passing in a variable
# current_line. Write out what current_line is equal to on each function call,
# and trace how it becomes line_count in print_a_line.
#
# => done.

# Extra Credit 3: Find each place a function is used, and go check its def to
# make sure that you are giving it the right arguments.
#
# => done.

# Extra Credit 4: Research online what the seek function for file does. Look
# at the rdoc documentation using the ri command and see if you can figure it
# out from there.
#
# => done.

# Extra Credit 5: Research the shorthand notation += and rewrite the script to
# use that.
#
# => 

