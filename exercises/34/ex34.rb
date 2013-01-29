animals = %w(bear python peacock kangaroo whale platypus)

# For each of these, write out a full sentence of the form: "The 1st animal is
# at 0 and is a bear." Then say it backwards, "The animal at 0 is the 1st
# animal and is a bear."
#
# ==>
# The 1st animal is at 0 and is a bear. The animal at 0 is the 1st animal and is a bear.
# The 2nd animal is at 1 and is a python. The animal at 1 is the 2nd animal and is a python.
# The 3rd animal is at 2 and is a peacock. The animal at 2 is the 3rd animal and is a peacock.
# The 4th animal is at 3 and is a kangaroo. The animal at 3 is the 4th animal and is a kangaroo.
# The 5th animal is at 4 and is a whale. The animal at 4 is the 5th animal and is a whale.
# The 6th animal is at 5 and is a platypus. The animal at 5 is the 6th animal and is a platypus.

ordinals = %w(1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th)

for i in (0..5)
	print "The %s animal is at %s and is a %s. "           % [ ordinals[i], i, animals[i] ]
	print "The animal at %s is the %s animal and is a %s." % [ i, ordinals[i], animals[i] ]
	puts
end

# The animal at 1
#
# => python

# The 3rd animal.
#
# => peacock

# The 1st animal.
#
# => bear

# The animal at 3.
#
# => kangaroo

# The 5th animal.
#
# => whale

# The animal at 2.
#
# => peacock

# The 6th animal.
#
# => playpus

# The animal at 4.
#
# => whale

# Extra Credit 1: Read about ordinal and cardinal numbers online.
#
# ==> done. The are also nominal numbers that name and identify things. (eg
# ==> zipcode 97201, jersey 00)

# Extra Credit 2: With what you know of the difference between these types
# of numbers, can you explain why this really is 2011? (Hint, you can't
# pick years at random.)
#
# ==> If 2011 represents the number of years since Jesus was born, then his
# ==> first year was his zeroth; that is, he was alive but less than 1.

# Extra Credit 3: Write some more arrays and work out similar indexes until
# you can translate them.
#
# ==> sure.

def explain_indices(ary)
	last_i = ary.size - 1
	ordinals = %w(1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th)

	for i in 0..last_i
		puts "The %s element is at %s and is %s." % [ ordinals[i], i, ary[i] ]
	end
end

puts "colors:"
explain_indices( %w(red blue green) )

puts "vocalized notes:"
explain_indices( %w(do re me fa so la ti do) )


# Extra Credit 4: Use Ruby to check your answers to this as well.
#
# ==> done.
#
# colors:
# The 1st element is at 0 and is red.
# The 2nd element is at 1 and is blue.
# The 3rd element is at 2 and is green.
# vocalized notes:
# The 1st element is at 0 and is do.
# The 2nd element is at 1 and is re.
# The 3rd element is at 2 and is me.
# The 4th element is at 3 and is fa.
# The 5th element is at 4 and is so.
# The 6th element is at 5 and is la.
# The 7th element is at 6 and is ti.
# The 8th element is at 7 and is do.

