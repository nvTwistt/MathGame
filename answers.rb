require './game.rb'
require './game-status.rb'
def answer
  if gets.chomp.to_i == @question.userAnswer
    if @p1.yourTurn
      puts "#{p1.name}: YES! You are correct."
      @p1.yourTurn = false
      @p2.yourTurn = true
      
    else 
      puts "#{p2.name}: YES! You are correct."
      @p1.yourTurn = true
      @p2.yourTurn = false
    end
    puts "#{@p1.name}: #{@p1.numLives}/3 vs #{@p2.name}: #{@p2.numLives}/3"
      gameStatus
  else 
    if @p1.yourTurn
      puts "#{p1.name}: Seriously? No!"
      @p1.yourTurn = false
      @p2.yourTurn = true
      @p1.numLives -= 1
    else
      puts "#{p2.name}: Seriously? No!"
      @p1.yourTurn = true
      @p2.yourTurn = false
      @p2.numLives -= 1
    end
    puts "#{@p1.name}: #{@p1.numLives}/3 vs #{@p2.name}: #{@p2.numLives}/3"
      gameStatus
  end
end