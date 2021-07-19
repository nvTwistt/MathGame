require './questions.rb'
require './player.rb'
require './answers.rb'
class Game
  attr_accessor :p1, :p2, :question
  def initialize
    @p1 = Player.new(setP1(p1), true)
    @p2 = Player.new(setP2(p2), false)
  end

  def setP1(p1) 
    puts "Please enter player 1's name?"
    p1 = gets.chomp
    return p1
  end

  def setP2(p2) 
    puts "Please enter player 2's name?"
    p2 = gets.chomp
    return p2
  end

  def getQuestion
    @question = Questions.new()
    puts "---- NEW TURN -----"
    if @p1.yourTurn
      puts "#{p1.name}: #{@question.newQuestion}"
    else 
      puts "#{p2.name}: #{@question.newQuestion}"
    end
  end

  def round
    getQuestion
    answer
  end

end
