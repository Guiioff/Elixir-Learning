defmodule StringUtils do

  #4
  def is_palindromo(str) do
    String.reverse(str) == str
  end

  #5
  def contar_vogais(str) do
    vogais = ["a", "e", "i", "o", "u"]
    str
      |> String.downcase()
      |> String.graphemes()
      |> Enum.filter(fn x -> Enum.member?(vogais,x)  end)
      |> length()
  end

end
