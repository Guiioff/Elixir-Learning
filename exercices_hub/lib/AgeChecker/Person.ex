defmodule AgeChecker.Person do

  defstruct [:name, :age]

  def build(name, age) do
    %AgeChecker.Person{
      name: name,
      age: age
    }
  end
end
