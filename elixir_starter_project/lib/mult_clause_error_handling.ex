defmodule Multi_clause do
  def area(:circle, radius) do
    # Calculate the area of a circle using the formula: π * r^2
    :math.pi() * :math.pow(radius, 2)
  end

  def area(_shape, _arg1) do
  {:error, "Invalid arguments 2"}
end
  def area(:rectangle, length, width) do
    length * width
  end

  def area(_shape, _arg1, _arg2) do
    {:error, "Invalid arguments"}
  end
  def area(_shape, _arg1, _arg2, _rr) do
    {:error, "Invalid arguments...."}
  end
end
