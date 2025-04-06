defmodule Validation do
  alias Validation.Person

  def validate(%Person{email: email, age: age} = person) do
    cond do
      !String.contains?(email, "@") -> {:error, "Invalid email"}
      age < 18 -> {:error, "Invalid age."}
      true -> {:ok, person}
    end
  end
end
