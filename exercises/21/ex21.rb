def add (a, b)
	puts "ADDING #{a} + #{b}"
	a + b
end

def subtract (a, b)
	puts "SUBTRACTING #{a} - #{b}"
	a - b
end

def multiply (a, b)
	puts "MULTIPLYING #{a} * #{b}"
	a * b
end

def divide (a, b)
	puts "DIVIDING #{a} / #{b}"
	a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"

# Extra Credit 1: If you aren't really sure what return values are, try
# writing a few of your own functions and have them return some values. You
# can return anything that you can put to the right of an =.
#
# => I got em, boss.

# Extra Credit 2: At the end of the script is a puzzle. I'm taking the return
# value of one function, and using it as the argument of another function. I'm
# doing this in a chain so that I'm kind of creating a formula using the
# functions. It looks really weird, but if you run the script you can see the
# results. What you should do is try to figure out the normal formula that
# would recreate this same set of operations.
#
# => age + height - (weight * (iq / 2))

# Extra Credit 3: Once you have the formula worked out for the puzzle, get in
# there and see what happens when you modify the parts of the functions. Try
# to change it on purpose to make another value.
#
# => modify what? change what? How about:

puts subtract(0, add(1, multiply(1, divide(0,1))))

# Extra Credit 4: Finally, do the inverse. Write out a simple formula and use
# the functions in the same way to calculate it.
#
# => triangle_area = (x * y) / 2

def triangle_area (x, y)
	x * y / 2
end

puts triangle_area(1.0, 1.0)
puts triangle_area(1.0, 2.0)
puts triangle_area(2.0, 2.0)
