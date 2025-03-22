defmodule SolutionHubTest do
  use ExUnit.Case
  doctest SolutionHub

  test "greets the world" do
    assert SolutionHub.hello() == :world
  end
end
