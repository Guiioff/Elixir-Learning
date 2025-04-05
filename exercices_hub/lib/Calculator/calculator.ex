defmodule Calculator do
  @pi 3.14
  def calcular_area(:circulo, raio) do
    {:ok, @pi * (:math.pow(raio, 2))}
  end
  def calcular_area(_forma, _), do: {:error, "Forma inválida"}
  def calcular_area(:retangulo, lado1, lado2) do
    {:ok, lado1 * lado2}
  end
  def calcular_area(:triangulo, base, altura) do
    {:ok, (base * altura) / 2}
  end
  def calcular_area(_forma, _, _), do: {:error, "Forma inválida"}


  def dividir(_num1, num2) when num2 == 0, do: {:error, "Divisão por Zero."}
  def dividir(num1, num2), do: {:ok, num1 / num2}

  def mostrar_resultado({:error, motivo}), do: "Erro: #{motivo}"
  def mostrar_resultado({:ok, resultado}), do: "Resultado: #{resultado}"
end
