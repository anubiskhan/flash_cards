require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/Card.rb'
require '../lib/Deck.rb'


class DeckTest < Minitest::Test
  def test_deck_has_card_array
    card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    card2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars')
    card3 = Card.new('Describe in words the exact direction that is 697.5° clockwise from due north?', 'North north west')
    card_array = [card1, card2, card3]
    deck = Deck.new(card_array)
    assert_equal card_array, deck.cards
  end
  def test_deck_count
    card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    card2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars')
    card3 = Card.new('Describe in words the exact direction that is 697.5° clockwise from due north?', 'North north west')
    card_array = [card1, card2, card3]
    deck = Deck.new(card_array)
    assert_equal 3, deck.count
  end
end
