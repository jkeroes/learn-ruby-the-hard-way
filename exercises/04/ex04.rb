# cars
cars = 100

# spaces in a car
space_in_a_car = 4.0

# drivers
drivers = 30

# look, these aren't quality comments because the code is pretty -explanatory.
passengers = 90

# can they ride bikes?
cars_not_driven = cars - drivers

# if you want a car on the road, it needs a driver.
cars_driven = drivers

# total count of people the People-Movers can move on one fell swoop.
carpool_capacity = cars_driven * space_in_a_car

# this should be a float:
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."


# Extra Credit 0: When I wrote this program the first time I had a mistake,
# and Ruby told me about it like this:
#
# ex4.rb:8:in `<main>': undefined local variable or method `car_pool_capacity'
# for main:Object (NameError)
#
# Explain this error in your own words. Make sure you use line numbers and
# explain why.
#
# => In the file 'ex4.rb' on line 8 in the 'main' namespace an error occured:
#    car_pool_capacity was used in a calculation before being assigned a value.
#
#    It's caused by mistyping the var. It should be carpool_capacity instead.

# Extra Credit 1: I used 4.0 for space_in_a_car, but is that necessary? What
# happens if it's just 4?
#
# => nothing significant changes. It affects the carpool_capacity but since
#    there's no division, the floats are not needed

# Extra Credit 2: Remember that 4.0 is a "floating point" number. Find out
# what that means.
#
# => done.

# Extra Credit 3: Write comments above each of the variable assignments.
#
# => done. Found that average_passengers_per_car would be a good candidate
#    for a float upgrade.

# Extra Credit 4: Make sure you know what = is called (equals) and that it's
# making names for things.
#
# => check.

# Extra Credit 5: Remember _ is an underscore character.
#
# => gotcha.

# Extra Credit 6: Try running IRB as a calculator like you did before and use
# variable names to do your calculations. Popular variable names are also i,
# x, and j.
#
# => done.
