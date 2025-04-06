defmodule Validation.Person do
  defstruct [:name, :email, :age]

  def build(name, email, age) do
    %Validation.Person{
      name: name,
      email: email,
      age: age
    }
  end
end
