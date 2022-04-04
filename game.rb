require 'byebug' 

class Game
  def initialize(players)
    # players array
    @players = players
    # identify which player is playing
    @playing = 0
  end

  def score
    "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
  end
    
  def play 
    num1 = rand(1..20)
    num2 = rand(1..20)
    result = num1 + num2
    player_playing = @players[@playing]

    puts "#{player_playing.name}: What does #{num1} plus #{num2} equal?"
    print '>'
    answer = $stdin.gets.chomp

   if answer.to_i == result
     puts "#{player_playing.name}: YES! You are correct"
     puts score
   else
     puts "#{player_playing.name}: Seriously? No!"
    
     # update player live and check if lives == 0
     game_over = player_playing.update_live
     puts score
     
     if game_over
      puts "#{@players[1 - @playing].name} wins with a score of #{@players[1 - @playing].lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(0)
     end
    end

    puts "----- NEW TURN -----"
    @playing = 1 - @playing
    # byebug
  end

end

