defmodule Deck.Card do
  defstruct [:value, :suit]

  def build(value, suit) do
    %Deck.Card{
      value: value,
      suit: suit
    }
  end
end
