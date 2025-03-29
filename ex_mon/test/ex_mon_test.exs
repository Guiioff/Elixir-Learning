defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO #usado para capturar mensagens de IO

  alias ExMon.Player

  describe "create_player/4" do
    test "returns a player" do
      expected_response = %Player{
        name: "Guilherme",
        life: 100,
        moves: %{move_avg: :chute, move_rnd: :soco, move_heal: :cura}
      }

      assert expected_response == ExMon.create_player("Guilherme", :chute, :soco, :cura)
    end
  end

  describe "start_game/1" do
    test "when the game is started, returns a message" do
      player = Player.build("Guilherme", :chute, :soco, :cura)

      messages =
        capture_io(fn ->
          assert ExMon.start_game(player) == :ok
        end)

      assert messages =~ "The game is started!" # '=~' regex para encontrar um valor dentro da string
      assert messages =~ "status: :started"
      assert messages =~ "turn: :player"
    end
  end

  describe "make_move/1" do
    setup  do
      player = Player.build("Guilherme", :chute, :soco, :cura)

      capture_io(fn ->
        ExMon.start_game(player)
      end)

      {:ok, player: player, a: 1, b: 2, c: 3}
    end

    test "whe the mov is valid, do the move and the computer makes a move", %{player: _player} do
      messages =
        capture_io(fn ->
          ExMon.make_move(:chute) == :ok
        end)

      assert messages =~ "The Player attacked the computer"
      assert messages =~ "It's computer turn"
      assert messages =~ "It's player turn"
      assert messages =~ "status: :continue"
    end

    test "when the move is invalid, returns an error message" do
      messages =
        capture_io(fn ->
          ExMon.make_move(:wrong)
        end)

      assert messages =~ "Invalid move: wrong."
    end
  end
end
