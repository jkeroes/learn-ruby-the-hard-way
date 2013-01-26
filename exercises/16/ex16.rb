filename = ARGV.first
script = $0

puts <<EOB
We're going to erase #{filename}.
If you don't want that, hit ^C.
If you do want that, hit RETURN.
EOB

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write( "%s\n%s\n%s\n" % [line1, line2, line3] )

puts "And finally, we close it."
target.close()

# If you feel you do not understand this, go back through and use the comment
# trick to get it squared away in your mind. One simple English comment above
# each line will help you understand, or at least let you know what you need
# to research more.
#
# => Why did we truncate the file to its current size. Why not
# => target.truncate(0)?
#
# => Aha, the author says it should be 0:
#
#    zedshaw Mod  Alberto • 11 months ago −
#    Uhhh yeah that looks like an error. It should be truncate(0) to make it
#    zero length. I'll fix that up soon.

# Write a script similar to the last exercise that uses read and argv to read
# the file you just created.
#
# => done: 16/cat.rb

# There's too much repetition in this file. Use strings, formats, and escapes
# to print out line1, line2, and line3 with just one target.write() command
# instead of 6.
#
# => done. Can we learn for loops next, please?

# Find out why we had to pass a 'w' as an extra parameter to open. Hint: open
# tries to be safe by making you explicitly say you want to write a file.
#
# => open() defaults to read-only mode when opening files. truncate() requires
# => writing.

# If you open the file with 'w' mode, then do you really need the
# target.truncate()? Go read the docs for Ruby's File.open function and see if
# that's true.
#
# => It's documented in IO: "w": Write-only, truncates existing file to zero 
# => length or creates a new file for writing.
