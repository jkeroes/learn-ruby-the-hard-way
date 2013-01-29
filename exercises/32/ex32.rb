the_count = [1, 2, 3, 4, 5]
fruits = %w(apples oranges pears apricots)
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# the first kind of for-loop goes through an array
for number in the_count
    puts "This is count #{number}"
end

# same as above, but using a block instead.
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# also we can go through mixed arrays too
for i in change
    puts "I got #{i}"
end

# we can also build arrays, first start with an empty one
elements = 0..5

# then use a range object to do 0 to 5 counts
# for i in (0..5)
#     puts "Adding #{i} to the list."
#     # push is a function that arrays understand
#     elements.push(i)
# end

# now we can puts them out too
for i in elements
    puts "Element was: #{i}"
end

# Extra Credit 1: Take a look at how you used the range (0..5). Look up the
# Range class to understand it.
#
# ==> done.

# Extra Credit 2: Could you have avoided that for-loop entirely on line 24
# and just assigned (0..5) directly to elements?
#
# ==> Yes. It would set elements to a Range object. While it would behave
# ==> similarly, it would be different at a base level.

# Extra Credit 3: Find the Ruby documentation on arrays and read about
# them. What other operations can you do to arrays besides push?
#
# ==> &, *, +, -, <<, <=>, ==, [], []=,
# ==> abbrev, assoc, at, clear, collect, collect!, combination, compact,
# ==> compact!, concat, count, cycle, dclone, delete, delete_at, delete_if,
# ==> drop, drop_while, each, each_index, empty?, eql?, fetch, fill,
# ==> find_index, first, flatten, flatten!, frozen?, hash, include?, index,
# ==> initialize_copy, insert, inspect, join, keep_if, last, length, map,
# ==> map!, pack, permutation, pop, pretty_print, pretty_print_cycle, product,
# ==> push, rassoc, reject, reject!, repeated_combination,
# ==> repeated_permutation, replace, reverse, reverse!, reverse_each, rindex,
# ==> rotate, rotate!, sample, select, select!, shelljoin, shift, shuffle,
# ==> shuffle!, size, slice, slice!, sort, sort!, sort_by!, take, take_while,
# ==> to_a, to_ary, to_csv, to_s, transpose, uniq, uniq!, unshift, values_at,
# ==> zip, |
