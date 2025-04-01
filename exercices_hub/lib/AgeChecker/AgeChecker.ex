defmodule AgeChecker do
  alias AgeChecker.Person

  def create_person(name, age) do
    Person.build(name, age)
  end

  def verify_age(%Person{name: name, age: age}) when age >= 18, do: IO.puts("#{name} is an adult.")
  def verify_age(%Person{name: name, age: age}) when age < 18, do: IO.puts("#{name} is a minor.")

end
