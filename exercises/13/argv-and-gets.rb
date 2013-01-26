first, second = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"

print "How many dots would you like? "
num = Integer(gets.chomp)
puts "." * num