require '../lib/Deck.rb'
require '../lib/Guess.rb'

class Round
  attr_reader :deck, :guesses, :current_card
  def initialize(deck)
    @deck = deck
  end

  def guesses
    @guesses = []
  end

  def current_card
    
  end
end
