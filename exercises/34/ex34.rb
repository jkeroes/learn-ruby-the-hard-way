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

ordinals = %w(1st 2nd 3rd 4th 5th 6th)

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
