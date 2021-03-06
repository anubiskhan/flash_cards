require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/Card.rb'
require '../lib/Guess.rb'

class GuessTest < Minitest::Test
  def test_type
    card = Card.new('What is the capital of Alaska?', 'Juneau')
    guess = Guess.new('This is a guess', card)
    assert_instance_of Guess, guess
    puts 'Type of guess is Guess'
  end

  def test_response
    card = Card.new('What is the capital of Alaska?', 'Juneau')
    guess = Guess.new('This is a guess', card)
    assert_equal 'This is a guess', guess.response
    puts 'there is a response'
  end

  def test_correct
    card = Card.new('What is the capital of Alaska?', 'Juneau')
    guess = Guess.new('Juneau', card)
    assert_equal true, guess.correct(guess.response, card.answer)
    puts 'guess equals answer'
  end

  def test_feedback
    card = Card.new('What is the capital of Alaska?', 'Juneau')
    guess = Guess.new('Juneau', card)
    success = guess.correct(guess.response, card.answer)
    assert_equal 'VICTORY!!!!', guess.feedback(success)
    puts success
  end
end
