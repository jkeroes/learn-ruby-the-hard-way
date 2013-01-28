module Ex25
    def self.break_words(stuff)
        # This function will break up words for us.
        words = stuff.split(' ')
        words
    end

    def self.sort_words(words)
        # Sorts the words
        words.sort()
    end

    def self.print_first_word(words)
        # Prints the first word and shifts the others down by one.
        words = words.shift()
        puts words
    end

    def self.print_last_word(words)
        # Prints the last word after popping it off the end.
        words = words.pop()
        puts words
    end

    def self.sort_sentence(sentence)
        # Takes in a full sentence and retunts the sorted words.
        words = break_words(sentence)
        sort_words(words)
    end

    def self.print_first_and_last(sentence)
        # Prints the first and last words of the sentence.
        words = break_words(sentence)
        print_first_word(words)
        print_last_word(words)
    end

    def self.print_first_and_last_sorted(sentence)
        # Sorts the words then prints the first and last.
        words = sort_sentence(sentence)
        print_first_word(words)
        print_last_word(words)
    end
end

# Extra Credit 1: Take the remaining lines of the WYSS output and figure
# out what they are doing. Make sure you understand how you are running
# your functions in the Ex25 module.
#
# ==> Run namespace.function on sorted words. It returns "All".
#
# irb(main):009:0> Ex25.print_first_word(sorted_words)
# All
# => nil

# ==> as above. The last word in our sorted_words array is "who".
#
# irb(main):010:0> Ex25.print_last_word(sorted_words)
# who
# => nil

# ==> just checking the sorted_words list...
#
# irb(main):011:0> sorted_words
# => ["come", "good", "things", "those", "to", "wait."]

# ==> now break the sentence into words and return the sorted array.
#
# irb(main):012:0> Ex25.sort_sentence(sentence)
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]

# ==> break sentence into words, then run two other funcs to print the first
# ==> and last words.
#
# irb(main):013:0> Ex25.print_first_and_last(sentence)
# All
# wait.
# => nil

# ==> sort the sentence into an array. then print the first and last words.
#
# irb(main):014:0> Ex25.print_first_and_last_sorted(sentence)
# All
# who
# => nil

# ==> and quit.
#
# irb(main):015:0> ^D


# Extra Credit 2: The reason we put our functions in a module is so they
# have their own namespace. If someone else writes a function called
# break_words, we won't collide. However, if typing Ex25. is annoying, you
# can type include Ex25 which is like saying, "Include everything from the
# Ex25 module in my current module."
#
# ==> In other words, include() injects functions from another namespace into
# ==> the current namespace.

# Extra Credit 3: Try breaking your file and see what it looks like in Ruby
# when you use it. You will have to quit IRB with CTRL-D to be able to
# reload it.
#
# ==> done. Got:
# ==> NameError: undefined local variable or method `aoeuaoeu' for Ex25:Module
