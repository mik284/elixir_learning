defmodule Function_pattern do
  # def sum({a,b}) do #will be of arity 1
  # will be of arity 2
  def sum(a, b) do
    a + b
  end

  def vol_cube(length_l, width_w, height_h) do
    IO.puts length_l * width_w * height_h
  end

  def area_cuboid(%{length1: l, width2: w, height3: h}) do
    IO.puts l * w * h
  end
end
