def prompt
  print "> "
end

puts "You enter a dark room with two doors. Do you go throught door #1 or door #2?"

prompt; door = gets.chomp

if door == "1"
  puts <<END
There's a giant bear here eating a cheesecake. What do you do?
1. Take the cake.
2. Scream at the bear.
END

  prompt; bear = gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing #{bear} is probably better. Bear runs away."
  end

elsif door == "2"
  puts <<END
You stare into the endless abyss at Cthulu's retina.
1. Blueberries
2. Yellow jacket clothespins.
3. Understanding revolvers yelling melodies.
END

  prompt; insanity = gets.chomp

  if insanity == "1" or insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
