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

  @doc """
  8 - Crie uma função que recebe uma tupla representando uma pessoa ({:ok, nome, idade}
  ou {:error, motivo}) e retorne uma mensagem apropriada.
  """
  def check_person({:ok, name, age}) when age >= 18 do
    "#{name} is an adult."
  end
  def check_person({:ok, name, _age}) do
    "#{name} is underage."
  end
  def check_person ({:error, motivo}) do
    "Error: #{motivo}"
  end

  @doc """
  10 - Crie uma função que recebe um mapa de produtos e
  retorna um novo mapa apenas com os produtos mais caros que R$50.
  """
  def filter_products(products) do
    products
      |> Enum.filter(fn {_product, price} -> price > 50 end)
      |> Enum.into(%{}) #transforma um
  end

  @doc """
  11 - Dado um conjunto de tuplas {produto, quantidade},
  calcule a soma total das quantidades usando Enum.reduce/3 e pipe operator
  """
  def total_items(items) do
    items
      |> Enum.reduce(0, fn {_name, number}, acc -> acc + number end)
  end

  @doc """
  12 - Crie uma função que recebe uma string no formato "Nome,Idade,Cidade" e retorna um mapa
  """
  @spec parse(binary()) :: %{
          optional(:cidade) => binary(),
          optional(:erro) => <<_::136>>,
          optional(:idade) => integer(),
          optional(:nome) => binary()
        }
  def parse(str) do
    str
    |> String.split(",")
    |> case do # permite fazer pattern matching diretamente no fluxo de transformação de dados
      [nome, idade, cidade] -> %{nome: nome, idade: String.to_integer(idade), cidade: cidade}
      _ -> %{erro: "Formato inválido"}
    end
  end
end
