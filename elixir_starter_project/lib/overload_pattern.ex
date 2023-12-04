defmodule User_details do
  # uses multiclause functions
  def user(:admin, name, phone) do # first user clause
    IO.puts name
    IO.puts phone
  end
  def user(:normaluser, name) do # second user clause
    IO.puts name
  end
end
