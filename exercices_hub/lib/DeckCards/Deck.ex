defmodule Deck do
  alias Deck.Card

  def create_card(value, suit) do
    Card.build(value, suit)
  end

  def winner(card1, card2) when card1.suit == card2.suit do
    cond do
      card1.value > card2.value -> {:vencedor, card1}
      card1.value < card2.value -> {:vencedor, card2}
    end
  end

  def winner(_card1, _card2) do
    {:empate, "Naipes Diferentes."}
  end

end
