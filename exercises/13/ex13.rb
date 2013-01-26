first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# Extra Credit 1: Try giving fewer than three arguments to your script. What
# values are used for the missing arguments?
#
# => Can't say for sure. nil, I think, though it might be false or "".

# Extra Credit 2: Write a script that has fewer arguments and one that has
# more. Make sure you give the unpacked variables good names.
#
# => Wrote one-arg.rb and four-args.rb. They behave differently.
#    four-args.rb behaves the same as ex13.rb.
#    one-arg.rb assigns all of ARGV to an array.

# Extra Credit 3: Combine STDIN.gets.chomp() with ARGV to make a script that
# gets more input from a user.
#
# => wrote argv-and-gets.rb
