tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

# Extra Credit 1: Search online to see what other escape sequences are available.
#
# => searches are only turing up stackoverflow Q&A's. I'm going to assume that
#    these work exactly the same as in Perl given the explanation.

# Extra Credit 2: Combine escape sequences and format strings to create a more
# complex format.
#
fmt = "%s:\t%s"
puts fmt % ["this", "that"]
puts fmt % ["those", "thuse"]

