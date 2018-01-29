class Deck
  def initialize(card_array)
    @card_array = card_array
  end

  def cards
    return @card_array
  end

  def count
    return @card_array.length
  end
end
