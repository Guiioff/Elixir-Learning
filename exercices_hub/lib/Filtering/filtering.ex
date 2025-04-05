defmodule Filtering do

  def filtrar_usuarios(usuarios) do
    usuarios
    |> Enum.filter(fn %{idade: idade} ->  idade > 21 end)
    |> Enum.map(fn %{nome: nome, cidade: cidade} -> %{nome: nome, cidade: cidade} end)
    |> Enum.map(fn  %{nome: nome, cidade: cidade} -> "#{nome} -- #{cidade}" end)
  end


  def filtrar_e_transformar(lista, funcao) do
    lista
    |> Enum.filter(funcao)
    |> Enum.map(fn x -> x * 2 end)
  end

  def transformar_numeros(lista) do
    lista
    |> Enum.filter(fn x -> rem(x,2) == 0 end)
    |> Enum.map(fn x -> x * 3 end)
    |> Enum.reduce(0, fn acc, x -> x + acc end)
    |> abs()
  end

end
