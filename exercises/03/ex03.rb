# print a string.
puts "I will now count my chickens:"

# print Hens with a count on two lines.
puts "Hens", 25 + 30 / 6.0

# print Roosters with a count on two lines.
puts "Roosters", 100 - 25 * 3 % 4.0

# Here come the eggs...
puts "Now I will count the eggs:"

# ...and their count.
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4.0 + 6

# Wax poetic.
puts "Is it true that 3 + 2 < 5 - 7?"

# Evaluate to a bool! Ruby uses true and false.
puts 3 + 2 < 5 - 7.0

# A sum:
puts "What is 3 + 2?", 3 + 2.0

# A negative:
puts "What is 5 - 7?", 5 - 7.0

# sudden realization!
puts "Oh, that's why it's false."

# a glutton for punishment are we?
puts "How about some more."

# another expression evaluated in turn:
puts "Is it greater?", 5 > -2.0

# Looks like ruby has all the standard comparison ops.
puts "Is it greater or equal?", 5 >= -2.0

# ibid.
puts "Is it less or equal?", 5 <= -2.0

# Extra Credit 1: Above each line, use the # to write a comment to yourself
# explaining what the line does.
#
# => done.

# Extra Credit 2: Remember in Exercise 0 when you started IRB? Start IRB this
# way again and using the above characters and what you know, use Ruby as a
# calculator.
#
# => done.

# Extra Credit 3: Find something you need to calculate and write a new .rb
# file that does it.
#
# => Wrote closet-dimensions.rb

# Extra Credit 4: Notice the math seems "wrong"? There are no fractions, only
# whole numbers. Find out why by researching what a "floating point" number
# is.
#
# => ruby defaults to integer-based math unless there's a decimal point
#    and mantissa in any value within the calculation.

# Extra Credit 5: Rewrite ex3.rb to use floating point numbers so it's more
# accurate (hint: 20.0 is floating point).
#
# => done.
