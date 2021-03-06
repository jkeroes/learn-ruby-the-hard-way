File.open(ARGV[1], 'w').write(File.open(ARGV[0]).read())

# Extra Credit 1: Go read up on Ruby's require statement, and start Ruby to
# try it out. Try importing some things and see if you can get it right. It's
# alright if you do not.
#
# => done.
#
# 1.9.3-p374 :005 > require '/Users/jkeroes/git/learn-ruby-the-hard-way/exercises/01/ex01.rb'
# sure.
#  => true

# Extra Credit 1: This script is really annoying. There's no need to ask you
# before doing the copy, and it prints too much out to the screen. Try to make
# it more friendly to use by removing features.
#
# => done.

# Extra Credit 2: See how short you can make the script. I could make this 1
# line long.
#
# => done.

# Extra Credit 3: Notice at the end of the WYSS I used something called cat?
# It's an old command that "con*cat*enates" files together, but mostly it's
# just an easy way to print a file to the screen. Type man cat to read about
# it.
#
# => done.

# Extra Credit 4: Windows people, find the alternative to cat that Linux/OSX
# people have. Do not worry about man since there is nothing like that.
#
# => n/a

# Extra Credit 5: Find out why you had to do output.close() in the code.
#
# => Output may be buffered. the close() flushes that buffer to the file.
#
# => It's unnecessary in the one-liner because it was autoclosed during GC.
