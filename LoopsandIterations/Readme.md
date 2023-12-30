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
