defmodule ElixirStarterProjectTest do
  use ExUnit.Case
  doctest ElixirStarterProject

  test "greets the world" do
    assert ElixirStarterProject.hello() == :world
  end
end
