require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/Card.rb'

class CardTest < Minitest::Test
  def test_card_has_question
    card = Card.new('What is the capital of Alaska?', 'Juneau')
    assert_instance_of Card, card
    assert_equal 'What is the capital of Alaska?', card.question
    puts 'It has a question, bruh.'
  end

  def test_card_has_answer
    card = Card.new('What is the capital of Alaska?', 'Juneau')
    assert_equal 'Juneau', card.answer
    puts 'It has an answer, braj.'
  end
end
