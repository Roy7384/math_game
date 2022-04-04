class Game
  def initialize(players)
    # players array
    @players = players
  end

  def play 
    num1 = rand(1..20)
    num2 = rand(1..20)
    result = num1 + num2
    player1 = players[0]
    player2 = players[1]
    score = "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"

    puts "#{player1.name}: What does #{num1} plus #{num2} equal?"
    print '>'
    answer = $stdin.gets.chomp

   if answer == result
     puts "#{player1.name}: YES! You are correct"
     puts score
   else
     puts "#{player1.name}: Seriously? No!"
     puts score
     if !player1.update_live
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye"!
      exit(0)
     end
   end

