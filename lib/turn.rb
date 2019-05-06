require './lib/card'

class Turn
  attr_reader :guess, :card

  def initialize(string, card)
    @guess = string
    @card = card
  end

  def correct?
    if @card.answer == @guess
      return true
    else
      return false
    end
  end

  def feedback
    if correct? == true
      return "Correct"
    else
      return "Incorrect"
    end
  end
end
