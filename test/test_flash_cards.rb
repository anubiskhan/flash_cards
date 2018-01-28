require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/flash_cards.rb'

class CardTest < Minitest::Test
  def test_card_has_question
    card = Card.new('This is a question?', 'This is an answer')
    assert_instance_of Card, card
    assert_equal 'This is a question?', card.question
    puts 'It has a question, bruh.'
  end

  def test_card_has_answer
    card = Card.new('This is a question?', 'This is an answer')
    assert_equal 'This is an answer', card.answer
    puts 'It has an answer, braj.'
  end
end
