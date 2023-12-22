defmodule PasswordGenTest do
  use ExUnit.Case
  doctest PasswordGen

  test "greets the world" do
    assert PasswordGen.hello() == :world
  end
end
