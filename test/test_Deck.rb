require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/Card.rb'
require '../lib/Deck.rb'


class DeckTest < Minitest::Test
  def test_deck_has_card_array
    card1 = Card.new('1 is a question?', '1 is an answer')
    card2 = Card.new('2 is a question?', '2 is an answer')
    card3 = Card.new('3 is a question?', '3 is an answer')
    card_array = [card1, card2, card3]
    deck = Deck.new(card_array)
    assert_equal card_array, deck.cards
  end
  def test_deck_count
    card1 = Card.new('1 is a question?', '1 is an answer')
    card2 = Card.new('2 is a question?', '2 is an answer')
    card3 = Card.new('3 is a question?', '3 is an answer')
    card_array = [card1, card2, card3]
    deck = Deck.new(card_array)
    assert_equal 3, deck.count
  end
end
