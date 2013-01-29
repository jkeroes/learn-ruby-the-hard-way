people = 30
cars = 40
buses = 50

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if buses > cars
  puts "That's too many buses."
elsif buses < cars
  puts "Maybe we could take the buses."
else
  puts "We still can't decide."
end

if people > buses
  puts "Alright, let's just take the buses."
else
  puts "Fine, let's stay home then."
end

# Extra Credit 1: Try to guess what elsif and else are doing.
#
# ==> the first expr in an if or elsif "wins" and its block will get executed.
# ==> if they all fail, the else clause will get executed instead.

# Extra Credit 2: Change the numbers of cars, people, and buses and then
# trace through each if-statement to see what will be printed.
#
# ==> done.

# Extra Credit 3: Try some more complex boolean expressions like cars >
# people and buses < cars. Above each line write an English description of
# what the line does.
#
# ==> done. Skipping the comments; this code is sely-documenting.

if buses < cars
  puts "Sounds like 'Murica"
end

if cars > people
  puts "Detroit's dream"
end
