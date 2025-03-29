defmodule ExMon.GameTest do
  use ExUnit.Case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = Player.build("Guilherme", :chute, :soco, :cura)
      computer = Player.build("Robotnik", :chute, :soco, :cura)

      assert {:ok , _pid} = Game.start(computer, player)
    end
  end

  describe "info/0" do
    test "returns the current game state" do
      player = Player.build("Guilherme", :chute, :soco, :cura)
      computer = Player.build("Robotnik", :chute, :soco, :cura)
      Game.start(computer, player)

      expected_response = %{
        status: :started,
        player: %Player{
          name: "Guilherme",
          life: 100,
          moves: %{move_avg: :soco, move_rnd: :chute, move_heal: :cura}
        },
        computer: %Player{
          name: "Robotnik",
          life: 100,
          moves: %{move_avg: :soco, move_rnd: :chute, move_heal: :cura}
        },
        turn: :player
      }

      assert Game.info() == expected_response
    end
  end

  describe "update/1" do
    test "returns the game state updated" do
      player = Player.build("Guilherme", :chute, :soco, :cura)
      computer = Player.build("Robotnik", :chute, :soco, :cura)
      Game.start(computer, player)

      expected_response = %{
        status: :started,
        player: %Player{
          name: "Guilherme",
          life: 100,
          moves: %{move_avg: :soco, move_rnd: :chute, move_heal: :cura}
        },
        computer: %Player{
          name: "Robotnik",
          life: 100,
          moves: %{move_avg: :soco, move_rnd: :chute, move_heal: :cura}
        },
        turn: :player
      }

      assert Game.info() == expected_response

      new_state = %{
        status: :started,
        player: %Player{
          name: "Guilherme",
          life: 85,
          moves: %{move_avg: :soco, move_rnd: :chute, move_heal: :cura}
        },
        computer: %Player{
          name: "Robotnik",
          life: 50,
          moves: %{move_avg: :soco, move_rnd: :chute, move_heal: :cura}
        },
        turn: :player
      }

      Game.update(new_state)

      expected_response = %{new_state | turn: :computer, status: :continue}

      assert expected_response == Game.info()

    end
  end
end
