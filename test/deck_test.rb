require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class TurnTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_instance_of Deck, deck
  end

  def test_it_can_find_cards_by_category
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    stem_result = deck.cards_in_category(:STEM)
    expected_two = [card_2, card_3]
    assert_equal expected_two, stem_result

    geo_result = deck.cards_in_category(:Geography)
    expected_one = [card_1]
    assert_equal expected_one, geo_result

    pop_result = deck.cards_in_category("Pop Culture")
    expected_none = []
    assert_equal expected_none, pop_result
  end
end
