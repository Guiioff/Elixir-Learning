defmodule ListUtils do

  @moduledoc """
  6 - Implemente uma versão da função map/2 para aplicar uma função a todos os
  elementos de uma lista.
  """
  def my_map([], _func), do: []
  def my_map([head | tail], func) do
    [func.(head) | my_map(tail, func)]
  end

  @moduledoc """
  7 - Transforme uma lista de números, dobrando cada número, filtrando os que
  são maiores que 10 e somando os valores finais.
  """
  def process_list(list) do
    list
      |> Enum.map(fn x -> x * 2 end)
      |> Enum.filter(fn x -> x > 10 end)
      |> Enum.reduce(0, fn x, acc -> x + acc end)
  end

  @moduledoc """
  9 - Recrie a função Enum.each/2, que recebe uma lista e uma função e executa essa função
  para cada elemento.
  """
  def my_each([], _func), do: :ok
  def my_each([head | tail], func) do
    func.(head)
    my_each(tail, func)
  end

end
