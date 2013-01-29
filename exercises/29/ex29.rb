people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are dogs."
end

# Extra Credit 1: What do you think the if does to the code under it?
#
# ==> if runs the indented code block if the expression evaluates to true.

# Extra Credit 2: Can you put other boolean expressions from Ex. 27 in the
# if-statement? Try it.

if people.equal?(dogs)
  puts "people is .equal to dogs"
end

if people.eql?(dogs)
  puts "people is .eql to dogs"
end

if (people <=> dogs) == 0
  puts "people <=> dogs evaluated to 0"
end

# Extra Credit 3: What happens if you change the initial variables for
# people, cats, and dogs?
#
# ==> different strings are printed.

