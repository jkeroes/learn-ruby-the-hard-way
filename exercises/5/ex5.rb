name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
	age, height, weight, age + height + weight]

# Extra Credit 1: Change all the variables so there isn't the my_ in front.
# Make sure you change the name everywhere, not just where you used = to set
# them.
#
# => done.

# Extra Credit 2: Try more format sequences.
#
puts "Zed may be %d years old but he feels like he's %f." % [age, age * 4/5]

# Extra Credit 3: Search online for all of the Ruby format sequences.
#
# => Documented in Kernel::sprintf. eg http://apidock.com/ruby/Kernel/sprintf

# Extra Credit 4: Try to write some variables that convert the inches and
# pounds to centimeters and kilos. Do not just type in the measurements. Work
# out the math in Ruby.

# constants
inches_per_cm = 2.54
pounds_per_kilo = 0.45359237

puts "In Metric-land, Zed is %.1f cms tall." % [height * inches_per_cm]
puts "In Metric-land, Zed weighs %.1f kilos." % [weight * pounds_per_kilo]


