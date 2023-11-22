defmodule ElixirStarterProject do
  @moduledoc """
  Documentation for `ElixirStarterProject`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirStarterProject.hello()
      :world

  """
  def hello do
    pat = [2,4,5,"pattern"]
    # [start | _] = pat
    [_|rest]=pat

  #  Jason.encode(start)
   Jason.encode(rest)

  end
end
