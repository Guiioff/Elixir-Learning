defmodule Biblioteca.Livro do
  defstruct [:titulo, :autor, :ano]

  def criar_livro(titulo, autor, ano) do
    %Biblioteca.Livro {
      titulo: titulo,
      autor: autor,
      ano: ano
      }
  end
end
