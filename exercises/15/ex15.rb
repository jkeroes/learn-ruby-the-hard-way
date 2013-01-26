# set filename to the first conmmand line arg
# filename = ARGV.first

# make a prompt string
prompt = "> "

puts "Filename, please: "
print prompt
filename = STDIN.gets.chomp()

# txt is a file obj.
txt = File.open(filename)

# display the requested file's path.
puts "Here's your file: #{filename}"

# show the file contents
puts txt.read()
txt.close

# # request a path to a file
# puts "I'll also ask you to type it again:"

# # here's the prompt
# print prompt

# # store another file path.
# file_again = STDIN.gets.chomp()

# # open the new file path. This is another file obj.
# txt_again = File.open(file_again)
# txt_again.close

# # show this file's contents
# puts txt_again.read()

# Extra Credit 1: Above each line write out in English what that line does.
#
# => done

# Extra Credit 2: If you are not sure ask someone for help or search online.
# Many times searching for "ruby THING" will find answers for what that THING
# does in Ruby. Try searching for "ruby file.open".
#
# => http://www.ruby-doc.org/core-1.9.3/File.html . Handy.

# Extra Credit 3: I used the name "commands" here, but they are also called
# "functions" and "methods". Search around online to see what other people do
# to define these. Do not worry if they confuse you. It's normal for a
# programmer to confuse you with their vast extensive knowledge.
#
# => subroutines and calls, too.

# Extra Credit 4: Get rid of the part from line 9-15 where you use STDIN.gets
# and try the script then.
#
# => it's cat(1)!

# Extra Credit 5: Use only STDIN.gets and try the script that way. Think of
# why one way of getting the filename would be better than another.
#
# => done. I prefer command line args to prompts. Interaction makes piping
# => data harder.

# Extra Credit 6: Run ri File and scroll down until you see the read() command
# (method/function). See all the other ones you can use? Try some of the other
# commands.
#
# => Was missing. Fixed by installing rdoc-data and rebuilding system and gem
# => docs.

# Extra Credit 7: Startup IRB again and use File.open from the prompt. Notice
# how you can open files and run read on them right there?
#
# => yes.

# Extra Credit 8: Have your script also do a close() on the txt and txt_again
# variables. It's important to close files when you are done with them.
#
# => done
