require './game'
def gameStatus
  if @p1.numLives == 0
    puts "#{@p2.name} wins with a score of #{@p2.numLives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  elsif @p2.numLives == 0
    puts "#{@p1.name} wins with a score of #{@p1.numLives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else 
    round
  end
end