# create a function that accepts two args
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	# print this heredoc after trimming the initial whitespace.
	puts <<-END.gsub(/^[ \t]+/, '')
		You have #{cheese_count} cheeses!
		You have #{boxes_of_crackers} boxes of crackers!
		Man, that's enough for a party!
		Get a blanket.

	END
# end of func.
end

# print this:
puts "We can just give the function numbers directly:"
# and run our func.
cheese_and_crackers(20, 30)

# print a msg, set two vars, and call the func with our new vars.
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# same as above, but the math exprs are evaluated before the call is made,
# so the function sees 30 and 11; two args.
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# same as above, except as the msg says, we're combining vars and math
# before the call is made.
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# Extra Credit 1: Go back through the script and type a comment above each
# line explaining in English what it does.
#
# => done.

# Extra Credit 2: Start at the bottom and read each line backwards, saying all
# the important characters.
#
# => done.

# Extra Credit 3: Write at least one more function of your own design, and run
# it 10 different ways.
#
def add(this, that)
	this + that
end

puts add(0, 0)
puts add(1, 0)
puts add(0, 1)
puts add(0, -1)
puts add(1, -1)
puts add(add(0,1), add(1,0))
puts add( add( add(0,1), add(1,0)), add(add(0,1), add(1,0)) )
puts add(-10000 * 0, 1000 / 1000)
puts add(0.0, 1)
puts add(0.12345678, 0.87654321)
