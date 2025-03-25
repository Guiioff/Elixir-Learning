defmodule ExMon.Player do

  @required_keys [:life, :name, :move_rnd, :move_avg, :move_heal]
  @max_life 100 # variável de módulo (constante)

  @enforce_keys  @required_keys # garante que todas as chaves são obrigatórias para criar essa struct
  defstruct [:life, :move_avg, :move_heal, :move_rnd, :name]

  def build(name, move_rnd, move_avg, move_heal) do
    %ExMon.Player{
      life: @max_life,
      move_avg: move_avg,
      move_heal: move_heal,
      move_rnd: move_rnd,
      name: name,
    }
  end
end
