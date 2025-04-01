defmodule Converter do

  def km_to_miles(km) do
    km / 1.609
  end

  def celsius_to_fahrenheit(temp) do
    (1.8 * temp) + 32
  end
end
