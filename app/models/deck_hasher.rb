class DeckHasher
  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def cards
    deck.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
  end

  def count
    cards.values.inject(:+)
  end
end