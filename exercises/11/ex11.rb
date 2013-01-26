print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weigh? "
weight = gets.chomp()

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."

# Extra Credit 1: Go online and find out what Rubys gets and chomp methods do.
#
# => gets returns the next chunk from an I/O stream or nil. Be default, the
#    chunk is a line, but that can be changed by setting the input seperator.
#    See docs.
#
#    chomp returns a new string with the newlines removed. The newline can be
#    changed. See docs.

# Extra Credit 1: Can you find other ways to use gets.chomp? Try some of the
# samples you find.
#
# => STDIN is an I/O stream. Open files also provide an I/O stream. eg
#    File.new("testfile").gets
#
#    Sockets are another type of I/O stream. There may be better options to 
#    handle blocking issues or data without newlines but gets should work in
#    some cases.

# Extra Credit 1: Write another "form" like this to ask some other questions.
#
print "How ya like me now? "
amount_liked = gets.chomp()
puts "#{amount_liked}. That much."
