class Questions
  attr_accessor :newQuestion, :userAnswer

  def initialize()
    #must store randomly generated number in a variable
    firstNumber = generateNumber()
    secondNumber = generateNumber()
    @newQuestion = "What does #{firstNumber} plus #{secondNumber} equal?"
    @userAnswer = firstNumber + secondNumber
  end

  def generateNumber
    number = rand(1..20)
    return number
  end
end