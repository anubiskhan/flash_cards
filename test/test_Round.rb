require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/Card.rb'
require '../lib/Deck.rb'
require '../lib/Guess.rb'
require '../lib/Round.rb'

class RoundTest < Minitest::Test
  def test_check_for_deck
    card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    card2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars')
    card_array = [card1, card2]
    deck = Deck.new(card_array)
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_array_of_guesses
    card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    card2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars')
    card_array = [card1, card2]
    deck = Deck.new(card_array)
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_current_card
    card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    card2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars')
    card_array = [card1, card2]
    deck = Deck.new(card_array)
    round = Round.new(deck)
    assert_equal card1, round.current_card
  end

  def test_record_guess
  card1 = Card.new('What is the capital of Alaska?', 'Juneau')
  card2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars')
  card_array = [card1, card2]
  deck = Deck.new(card_array)
  round = Round.new(deck)

  end
  #
  # def test_
  # end
  #
  # def test_
  # end
  #
  # def test_
  # end
  #
  # def test_
  # end
  #
  # def test_
  # end
  #
  # def test_
  # end
  #
end
