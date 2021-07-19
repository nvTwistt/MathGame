class Player
  attr_accessor :numLives, :yourTurn, :name

  def initialize(name, start)
    @name = name
    @numLives = 3
    @yourTurn = start
  end
end