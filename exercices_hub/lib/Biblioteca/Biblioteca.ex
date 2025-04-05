defmodule Biblioteca do

  alias Biblioteca.Livro

  def adicionar_livro(titulo, autor, ano) do
    Livro.criar_livro(titulo, autor, ano)
  end

  def buscar_por_autor(livros, autor) do
    livros_filtrados = Enum.filter(livros, fn livro -> livro.autor == autor end)

    case livros_filtrados do
      [] -> {:error, "Nenhum livro encontrado para o autor #{autor}"}
      _ -> {:ok, livros_filtrados}
    end
  end

end
