## Loops and Iterations

> Looping in Elixir works very differently than it does in mainstream languages.
> Constructs such as while and do…while aren’t provided.
> The principal looping tool in Elixir is recursion.

#### Iterating with recursion

- implement a function that prints the first n natural numbers
  (positive integers).

```elixir
defmodule NaturalNums do
    def print(1), do: IO.puts(1)
    def print(n) do
            print(n - 1)
            IO.puts(n)
    end
end
```

> This code relies on recursion, pattern matching, and multiclause functions. The code
> is very declarative: if n is equal to 1, you print the number. Otherwise, you print the first
> n – 1 numbers and then the nth one.

#### Calculating the sum of the list (sum_list.ex)

```elixir
defmodule ListHelper do
    def sum([]), do: 0
    def sum([head | tail]) do
        head + sum(tail)
    end
end
```

- This code looks very declarative:
  > - The sum of all the elements of an empty list is 0.
  > - The sum of all the elements of a non-empty list equals the list’s head plus the sum
  >   of the list’s tail.
