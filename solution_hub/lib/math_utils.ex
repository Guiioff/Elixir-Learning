defmodule MathUtils do

  @doc """
  1 - Crie uma função que verifique se um número é primo.
  """
  def is_primo(number) when number < 2, do: false
  def is_primo(2), do: true
  def is_primo(number) do
    lista = Enum.to_list(2..number - 1)
    Enum.all?(lista, fn x -> rem(number, x) != 0  end)
  end

  @doc """
  2 - Implemente uma função recursiva que calcule o fatorial de um número.
  """
  def fatorial(0), do: 1
  def fatorial(n) do
    n * fatorial(n-1)
  end

  @doc """
  3 - Escreva uma função recursiva que retorne o n-ésimo número da sequência de Fibonacci.
  """
  def fibonacci(1), do: 1
  def fibonacci(2), do: 1
  def fibonacci(n) when n > 2 do
    fibonacci(n - 1) + fibonacci(n - 2)
  end

end
