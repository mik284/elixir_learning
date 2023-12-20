# if and unless

* The *if* statement executes the command if the specified condition is truth, and *unless* does the opposite, the command is executed if the condition is false.

```elixir
#example  of if condition
color="blue"

if color == "blue" do
"yes"
end

# output: "yes"
```

```elixir
#example of a one liner
if color == "blue", do: "yes
```

```elixir
#example 2 of unless which does the opposite
color="blue"

unless color == "blue" do
"yes"
end

# output: nil

unless color != "blue" do
"yes"
end

# output: "yes"
```

```elixir
#example of a one liner
unless color == "blue", do: "yes
nil
```

## if else

```elixir
#example  of if else condition
color="blue"

if color == "red" do
"yes"
else
"no"
end

# output: "no"

#example of a one liner
if color == "blue", do: "yes, else: "no"
# output: "no"
```

> same can happen to unlesss (else)


## Case (->)
syntax

```elixir
case expression do
pattern_1 -> #pattern here indicates that it deals with pattern matching.
...
pattern_2 ->
...
...
end
```

* In the case construct, the provided expression is evaluated, and then the result is matched against the given clauses. 
* The first one that matches is executed, and the result of the corresponding
block (its last expression) is the result of the entire case expression. 
* If no clause matches, an error is raised.

> Note: The case construct is most suitable if you don’t want to define a separate multiclause
function.

> In fact, the general case syntax can be directly translated into the multiclause approach:
```elixir
defp fun(pattern_1), do: ...
defp fun(pattern_2), do: ...
... #The default clause that always matches
```