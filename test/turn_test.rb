require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test
  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_instance_of Card, card
  end

  def test_if_guess_is_correct
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert true, turn.correct?
  end

  def test_if_guess_is_not_correct
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Denver", card)

    refute false, turn.correct?
  end

  def test_if_feedback_is_shown_for_correct_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert "Correct", turn.feedback
  end

  def test_if_feedback_is_shown_for_bad_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert "Incorrect", turn.feedback
  end
end
