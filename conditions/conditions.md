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
```
```elixir
#example of a one liner
unless color == "blue", do: "yes
nil
```