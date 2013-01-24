# Sing a little song
puts "Mary had a little lamb."
puts "Its fleece was white as %s." % 'snow'
puts "And everywhere that Mary went."

# * is the repetition op in ruby. It's like perl's x op.
puts "." * 10  # what'd that do?

# Define 12 strings with a single char in each.
end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# notice how we are using print instead of puts here. change it to puts
# and see what happens.
#
# => print with + concats the characters into two strings. Because there's
#    no newline in any of the strings and because print doesn't send one 
#    automatically, our characters appear to be a single word on the screen.
#
#    Changing print to puts prints "Cheese\n" and "Burger\n" to the screen.
#
puts end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12

# this just is polite use of the terminal, try removing it
#
# => done.
puts

# Extra Credit 1: Go back through and write a comment on what each line does.
#
# => That's inane. I'll comment blocks instead... done.

# Extra Credit 2: Read each one backwards or out loud to find your errors.
#
# => done.

# Extra Credit 3: From now on, when you make mistakes write down on a piece of
# paper what kind of mistake you made.
#
# => will do.

# Extra Credit 4: When you go to the next exercise, look at the last mistakes
# you made and try not to make them in this new one.
#
# => Roger Wilco.

# Extra Credit 5: Remember that everyone makes mistakes. Programmers are like
# magicians who like everyone to think they are perfect and never wrong, but
# it's all an act. They make mistakes all the time.
#
# => yup.

