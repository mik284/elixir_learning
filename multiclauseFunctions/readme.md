### Multiclause lambdas

<!-- livebook:{"break_markdown":true} -->

* Anonymous functions (lambdas) may also consist of multiple clauses.
* recall the
  basic way of defining and using lambdas:

```elixir
# Defines a lambda
double = fn x -> x * 2 end
```

<!-- livebook:{"output":true} -->

```
#Function<42.105768164/1 in :erl_eval.expr/6>
```

```elixir
# Calls a lambda
double.(3)
```

<!-- livebook:{"output":true} -->

```
6
```

lambda syntax has the following shape

```elixir
fn
pattern_1, pattern_2 ->
#... Executed if pattern_1 matches,
pattern_3, pattern_4 ->
#...Executed if pattern_2 matches
...
end
```

reimplementing the test/1 function that inspects whether a
number is positive, negative, or zero

```elixir
test_num =
  fn
    x when is_number(x) and x < 0 ->
      :negative

    0 ->
      :zero

    x when is_number(x) and x > 0 ->
      :positive
  end
```

<!-- livebook:{"output":true} -->

```
#Function<42.105768164/1 in :erl_eval.expr/6>
```

> Notice: There’s no special ending terminator for a lambda clause. The clause ends
> when the new clause is started (in the form pattern →) or when the lambda definition
> is finished with end.

<!-- livebook:{"break_markdown":true} -->

Because all clauses of a lambda are listed under the same fn expression, the parentheses
for each clause are by convention omitted. In contrast, each clause of a named
function is specified in a separate def (or defp) expression. As a result, parentheses
around named function arguments are recommended

```elixir
test_num.(-1)
```

<!-- livebook:{"output":true} -->

```
:negative
```

```elixir
test_num.(0)
```

<!-- livebook:{"output":true} -->

```
:zero
```

```elixir
test_num.(1)
```

<!-- livebook:{"output":true} -->

```
:positive
```
* Multiclause lambdas come in handy when using higher-order functions