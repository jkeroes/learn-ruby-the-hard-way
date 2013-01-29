def incr_to_array(max, skip=1)
  i = 0
  numbers = []

  # should assert or throw.
  if max < i
    puts "loop() must be called with a positive int argument"
    return numbers
  end

  while i < max
    puts "At the top i is #{i}"
    numbers.push(i)

    i = i + skip
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  numbers
end

numbers = incr_to_array(4, 2)

puts "The numbers: "

for num in numbers
  puts num
end


# Extra Credit 1: Convert this while loop to a function that you can call,
# and replace 6 in the test (i < 6) with a variable.
#
# ==> done.

# Extra Credit 2: Now use this function to rewrite the script to try
# different numbers.
#
# ==> done.

# Extra Credit 3: Add another variable to the function arguments that you
# can pass in that lets you change the + 1 on line 8 so you can change how
# much it increments by.
#
# ==> done.

# Extra Credit 4: Rewrite the script again to use this function to see what
# effect that has.
#
# ==> done.

# Extra Credit 5: Now, write it to use for-loops and ranges instead. Do you
# need the incrementor in the middle anymore? What happens if you do not
# get rid of it?
#
# ==> 

