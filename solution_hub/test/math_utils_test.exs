defmodule MathUtilsTest do
  use ExUnit.Case

  describe "is_primo/1" do

    test "When a prime numbes is provided, returns true" do
      expected_response = true
      assert MathUtils.is_primo(53) == expected_response
    end

    test "When a not prime numbes is provided, returns false" do
      expected_response = false
      assert MathUtils.is_primo(25) == expected_response
    end

  end
end
