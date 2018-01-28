class Guess
  attr_reader :response, :card
  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct(response, answer)
    if response == answer
      return true
    else
      return false
    end
  end

  def feedback(success)
    if success == true
      return 'VICTORY!!!!'
    else
      return 'You are not even level 1'
    end
  end
end
