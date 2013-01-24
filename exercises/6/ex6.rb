# use #{} to interpolate a value.
x = "There are #{10} types of people."

# just a string
binary = "binary"

# looks like variable names can't have apostrophes
do_not = "don't"

# var interp with #{}
y = "Those who know #{binary} and those who #{do_not}."

# show off for the user
puts x

# dance, monkey, dance.
puts y

# double-interpolation.
puts "I said: #{x}."

# it's turtles all the way down.
puts "I also said: '#{y}'."

# wouldn't it be more clever to evaluate the joke to false?
hilarious = false

# false stringifies to "false".
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# keep dancing for the user.
puts joke_evaluation

# go west, young man
w = "This is the left side of..."

# on second thought...
e = "a string with a right side."

# new operator: concatenation!
puts w + e

# Extra Credit 1: Go through this program and write a comment above each line
# explaining it.
#
# => commenting every line is silly, but if you insist... done.

# Extra Credit 2: Find all the places where a string is put inside a string.
# There are four places.
#
# => #{binary}, #{do_not}, #{x}, and #{y}.

# Extra Credit 3: Are you sure there's only four places? How do you know?
# Maybe I like lying.
#
# => #{hilarious} isn't a string in a string, it's a bool in a string.

# Extra Credit 4: Explain why adding the two strings w and e with + makes a
# longer string.
#
# => it's called concatenation.
