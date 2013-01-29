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
  elsif insanity == "liar"
    puts <<END
The truth shall set you free.
1. Why am I here?
2. You're just a figment of my imagination
END

    prompt; lies = gets.chomp

    if lies == "1"
      puts "Where else could you possibly be. Good job!"
    elsif lies == "2"
      puts "No escape from reality. Good job!"
    else
      puts "Easy come, easy go; good job."
    end

  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end

# Extra Credit #1: Make new parts of the game and change what decisions people can make. Expand the game out as much as
# you can before it gets ridiculous.
#
# ==> done.