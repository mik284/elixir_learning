# if and unless

- The _if_ statement executes the command if the specified condition is truth, and _unless_ does the opposite, the command is executed if the condition is false.

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

- In the case construct, the provided expression is evaluated, and then the result is matched against the given clauses.
- The first one that matches is executed, and the result of the corresponding
  block (its last expression) is the result of the entire case expression.
- If no clause matches, an error is raised.

> Note: The case construct is most suitable if you don’t want to define a separate multiclause
> function.

> In fact, the general case syntax can be directly translated into the multiclause approach:

```elixir
defp fun(pattern_1), do: ...
defp fun(pattern_2), do: ...
... #The default clause that always matches
```

### The with special form (with)

- The with special form, an be very useful when you need to chain a couple of expressions and return the error of the first expression that fails.
- Take a scenario:
  > Suppose you need to process registration data submitted by a user. The input is a
  > map, with keys being strings (“login”, “email”, and “password”).

```elixir
%{
"login" => "alice",
"email" => "alice@gmail.com",
"password" => "password",
"other_field" => "some_value",
"yet_another_field" => "...",
...
}
```

> Task is to normalize this map into a map that contains only the fields login, email,
> and password.

> if the set of fields is well-defined and known upfront, you can
> represent the keys as atoms. Therefore, for the given input, you can return the following
> structure:

```elixir
%{login: "alice", email: "some_email", password: "password"}
```

syntax

```elixir
with pattern_1 <- expression_1,
pattern_2 <- expression_2,
...
do
...
end
```
