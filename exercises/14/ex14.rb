# encoding: utf-8

first_name, last_name = ARGV

prompt = '⮀ '

puts "#{first_name} #{last_name}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me, #{first_name}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live, #{first_name}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE

# Extra Credit 1: Find out what Zork and Adventure were. Try to find a copy
# and play it.
#
# => Been there, done that.

# Extra Credit 1: Change the prompt variable to something else entirely.
#
# => Tried a unicode char but ruby balked with this error: "invalid multibyte
# => char (US-ASCII)". Added an encoding comment and ruby's happy.

# Extra Credit 1: Add another argument and use it in your script.
#
# => done

# Extra Credit 1: Make sure you understand how I combined a <<SOMETHING style
# multi-line string with #{ } string interpolation as the last print.
#
# => yup
