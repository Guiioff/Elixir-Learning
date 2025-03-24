defmodule ListUtils do

  #6
  def my_map([], _func), do: []
  def my_map([head | tail], func) do
    [func.(head) | my_map(tail, func)]
  end

end
