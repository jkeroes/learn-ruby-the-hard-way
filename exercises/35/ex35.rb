# prints a prompt
def prompt()
  print "> "
end

# From http://railsforum.com/viewtopic.php?id=19081
#
def numeric?(object)
  true if Float(object) rescue false
end

# Describes the gold room, parses user input, and changes to next state.
def gold_room()
  puts "This room is full of gold. How much do you take?"

  prompt; next_move = gets.chomp

  if numeric?(next_move)
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy. You win!"
    Process.exit(0)
  else
    dead("You greedy bastard")
  end
end

# Describes the bear room, parses user input, and changes to next state.
def bear_room()
  puts <<END
There is a bear here.
The bear has a bunch of honey.
The fat bear is in front of another bear.
How are you going to move the bear?
END

  bear_moved = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "take honey"
      dead("The bear looks at you and then slaps your face off.")
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif next_move == "taunt bear" and bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif next_move == "open door" and bear_moved
      gold_room()
    else
      puts "I have no idea what that means."
    end
  end
end

# Describes the cthulu room, parses user input, and changes to next state.
def cthulu_room()
  puts <<END
Here you see the great evil Cthulhu.
He, it, or whatever stares at you and you go insane.
Do you flee for your life or eat your head?
END

  prompt; next_move = gets.chomp

  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well, that was tasty!")
  else
    cthulu_room()
  end
end

# Accepts a string.
# Prints the string with " Good job!" appended to it and quits.
def dead(why)
  puts "#{why} Good job!"
  Process.exit(0)
end

# Describes the start room, parses user input, and changes to next state.
def start()
  puts <<END
You are in a dark room.
There is a door to your right and left.
Which one do you take?
END

  prompt; next_move = gets.chomp

  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulu_room()
  else
    dead("You stumble around the room until you starve.")
  end
end

start()

# Extra Credit 1: Draw a map of the game and how you flow through it.
#
# ==> graph-easy --as=boxart dungeon.in
#
#     flee                                       unknown input
# ┌──────────────┐                             ┌───────────────┐
# │              ∨                             ∨               │
# │            ┌───────────────────┐  left   ┌───────────────────┐  taunt bear   ┌─────────────────────┐  open door   ┌───────────┐  number less than 50 including a 0 or 1   ┌─────┐
# │    ┌────── │       start       │ ──────> │     bear room     │ ────────────> │ bear room/open door │ ───────────> │ gold room │ ────────────────────────────────────────> │ win │
# │    │       └───────────────────┘         └───────────────────┘               └─────────────────────┘              └───────────┘                                           └─────┘
# │    │           unknown input               │                                   │                                    │
# │    │ right   ┌───────────────┐             │ take honey                        │                                    │
# │    │         ∨               │             ∨                                   │                                    │
# │    │       ┌───────────────────┐  head   ┌───────────────────┐  taunt bear     │                                    │
# │    └─────> │    cthulu room    │ ──────> │                   │ <───────────────┘                                    │
# │            └───────────────────┘         │       dead        │                                                      │
# │              │                           │                   │  else                                                │
# └──────────────┘                           │                   │ <────────────────────────────────────────────────────┘
#                                            └───────────────────┘

# Extra Credit 2: Fix all of your mistakes, including spelling mistakes.
#
# ==> done.

# Extra Credit 3: Write comments for the functions you do not understand.
# Remember RDoc comments?
#
# ==> no need.

# Extra Credit 4: Add more to the game. What can you do to both simplify
# and expand it.
#
# ==>

# Extra Credit 5: The gold_room has a weird way of getting you to type a
# number. What are all the bugs in this way of doing it? Can you make it
# better than just checking if "1" or "0" are in the number? Look at how
# to_i() works for clues.
#
# ==>
