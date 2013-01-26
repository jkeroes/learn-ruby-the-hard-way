require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
	f.each_line {|line| p line}
	puts f.base_uri
	puts f.content_type
	puts f.charset
	puts f.content_encoding
	puts f.last_modified
end

# Extra Credit 1: Research the difference between require and include. How are
# they different?
#
# => require() loads a module by evaluating a file. Like Perl's use() or C's include.
#
#    include() loads a mixin class's functions into the current class. Like
#    Moose's with().

# Extra Credit 2: Can you require a script that doesn't contain a library
# specifically?
#
# => Skipped, per the author's comment:
#
# C. Koo • 8 months ago
# "Can you require a script that doesn't contain a library specifically?"
#
# Not exactly sure what the question is asking. Is a library a collection of
# scripts? How are they different?
#
#   zedshaw Mod  C. Koo • 8 months ago
#
#   Hmm, that is an odd question. Just skip it, I actually am not sure 
#   what I was asking there.

# Extra Credit 3: Figure out which directories on your system Ruby will look
# in to find the libraries you require.
#
# => ruby -e 'puts $LOAD_PATH'
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/x86_64-darwin11.4.2
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin11.4.2
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1
# /Users/jkeroes/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/x86_64-darwin11.4.2
