class Round

attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, @deck.cards.first)
    @turns << turn
    @deck.cards.rotate!
    turn
  end

end
