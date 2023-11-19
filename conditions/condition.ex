defmodule Condition do
  def promt() do
    IO.puts("Welcome to conditions...")

    IO.puts("Please insert your name!")
    name = IO.gets("") |> String.trim()

    if (name) do
      IO.puts("Your name is #{name}")
    else
      IO.puts("Invalid input")
    end
  end
end

Condition.if_condition()
