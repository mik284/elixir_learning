defmodule EndpointTest do
  use ExUnit.Case
  doctest Endpoint

  test "greets the world" do
    assert Endpoint.hello() == :world
  end
end
