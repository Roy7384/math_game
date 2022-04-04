class Game
  def initialize(players)
    # players array
    @players = players
  end

  def play 
    num1 = rand(1..20)
    num2 = rand(1..20)
    result = num1 + num2
    player1 = @players[0]
    player2 = @players[1]

    puts "#{player1.name}: What does #{num1} plus #{num2} equal?"
    print '>'
    answer = $stdin.gets.chomp

   if answer.to_i == result
     puts "#{player1.name}: YES! You are correct"
     puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
     puts "----- NEW TURN -----"
   else
     puts "#{player1.name}: Seriously? No!"
     over_or_not = player1.update_live
     puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
     if over_or_not
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(0)
    end
    puts "----- NEW TURN -----"
   end

   @players = @players.rotate
  end

end

