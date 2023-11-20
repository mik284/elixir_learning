# Map %{...=>...}
* Maps are collections of data stored in key-value pairs.

```elixir
#example of a map
employee=%{"name"=>"","last name"=>""}
employee["name"]

# output: ""
```

```elixir
#example of a update map
mike=%{employee | "name"=>"michael","last name"=>"kamau"}
mike["name"]

# output: "michael"
```

```elixir
#example of a map with an atom
letters=%{:a=>"A", :b=>"B", :c=>"C", :d=>"D"}
letters.a

# output: "A"
```