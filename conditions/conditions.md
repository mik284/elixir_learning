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