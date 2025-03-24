defmodule MathUtils do

  #1
  def is_primo(number) when number < 2, do: false
  def is_primo(2), do: true
  def is_primo(number) do
    lista = Enum.to_list(2..number - 1)
    Enum.all?(lista, fn x -> rem(number, x) != 0  end)
  end

  #2
  def fatorial(0), do: 1
  def fatorial(n) do
    n * fatorial(n-1)
  end

  #3
  def fibonacci(1), do: 1
  def fibonacci(2), do: 1
  def fibonacci(n) when n > 2 do
    fibonacci(n - 1) + fibonacci(n - 2)
  end

end
