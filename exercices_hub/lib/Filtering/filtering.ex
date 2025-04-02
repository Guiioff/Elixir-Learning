defmodule Filtering do

  def filtrar_usuarios(usuarios) do
    usuarios
    |> Enum.filter(fn %{idade: idade} ->  idade > 21 end)
    |> Enum.map(fn %{nome: nome, cidade: cidade} -> %{nome: nome, cidade: cidade} end)
    |> Enum.map(fn  %{nome: nome, cidade: cidade} -> "#{nome} -- #{cidade}" end)
  end

end
