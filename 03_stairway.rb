def roll_dice
    rand(1..6)
end
  
def climb_stairs
    steps = 0
    puts "Welcome to the staircase climbing game!"
    puts "You are at the bottom of a 10-step staircase."
    
    while steps < 10
      print "Press Enter to roll the dice..."
      gets.chomp
      roll = roll_dice
      
      if roll >= 5
        steps += 1
        puts "You rolled a #{roll}! You move up to step #{steps}."
      elsif roll == 1 && steps > 0
        steps -= 1
        puts "You rolled a #{roll}! You move down to step #{steps}."
      else
        puts "You rolled a #{roll}. You stay at step #{steps}."
      end
    end
  
    puts "Congratulations! You reached the top of the staircase!"
end
  
  climb_stairs