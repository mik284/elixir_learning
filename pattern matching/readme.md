# Pattern Matching

* Pattern matching is a powerful part of Elixir. It allows us to match simple values, data structures, and even functions.
  ### chatgpt
> Pattern matching is a fundamental and powerful feature in Elixir. It allows you to match values against patterns and execute different code based on the shape or content of those values. 

### Links to go through
1. [elixir learn pattern matching](https://elixirschool.com/en/lessons/basics/pattern_matching)
2. [Pattern matching blog](https://womanonrails.com/elixir-pattern-matching)


## Match operator

```elixir
# Simple value matching
case "elixir" do
  "elixir" -> IO.puts("Matched!")
  _ -> IO.puts("Not matched!")
end
````

In Elixir, the `` = `` operator is actually a match operator, comparable to the equals sign in algebra. Writing it turns the whole expression into an equation and makes Elixir match the values on the left hand with the values on the right hand. If the match succeeds, it returns the value of the equation. Otherwise, it throws an error. 

```elixir
iex> x = 1
1
```

Wait a moment it is just assignment. Well, not exactly. Not in Elixir. In Elixir = is the match operator. So we check if the left hand side expression can match to right hand side expression. This is why we can do:

```elixir
iex> 1 = x
1
```

but

```elixir
iex> 1 = x
1
iex> 2 = x
** (MatchError) no match of right hand side value: 1
```

same to lists and tuples

```elixir
# Lists
iex> list = [1, 2, 3]
[1, 2, 3]
iex> [1, 2, 3] = list
[1, 2, 3]
iex> [] = list
** (MatchError) no match of right hand side value: [1, 2, 3]
```

```elixir
# Tuples
iex> {:ok, value} = {:ok, "Successful!"}
{:ok, "Successful!"}
iex> value
"Successful!"
iex> {:ok, value} = {:error}
** (MatchError) no match of right hand side value: {:error}
```

We can have on the left hand side not only variables but also values. So in this case when on the left side, we don’t have ``:error``, we get an error. We didn’t match to the pattern. The same situation is for a size of the tuple. If the side is different between sides, we also get an error.

>Research on the use of ``_``(underscore) in pattern matching and its usecase e.g Date

## Pin operator (^)
* Accesses variables that already has a value, allowing us to avoud rebundung a variable with an existing value, so you can refer to the value prior to the match.

```elixir
#example
x = 1 
x = 2
x
# output: 2
```

```elixir
#if you do not want to rebind
^x = 3
x
# output: ** (MatchError) no match of right hand side value: 3
```

```elixir
#they do match since x = 2
^x = 2
x
# output: 2
```

```elixir
#using a tuple
result = "success"
{:ok, ^result}={:ok,"success"}
# output: {:ok,"success}
```

```elixir
#using a tuple
{:ok, ^result}={:ok,"error"}
# output: ** (MatchError) no match of right hand side value: {:ok,"error"}
```

```elixir
#using a tuple and ommit the pin operator
{:ok, result}={:ok,"error"}
# output: {:ok,"error"}

result
#output: "error"
```