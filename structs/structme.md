## Structs %identity{}

* Structs are extensions built on top of maps that provide compile-time checks and default values.
* In simple terms structs are specialized maps with an identity
* syntax
```elixir
%{}#map
%identity{} #struct
#new_user = %User{}
```

example
```elixir
defmodule User do
  defstruct name: "John", age: 27
end
```
* To define a struct we use defstruct along with a keyword list of fields and default values
* Structs take the name of the module they're defined in. In the example above, we defined a struct named User.
  
  > We can now create User structs by using a syntax similar to the one used to create maps:

```elixir
%User{}
# %User{age: 27, name: "John"}
%User{name: "Jane"}
# %User{age: 27, name: "Jane"}
  ```

## Accessing and updating structs
* Structs share the same syntax for accessing and updating fields as maps of fixed keys:
```elixir
john = %User{}
# %User{age: 27, name: "John"}
john.name
# "John"
jane = %{john | name: "Jane"}
# %User{age: 27, name: "Jane"}
%{jane | oops: :field}
# ** (KeyError) key :oops not found in: %User{age: 27, name: "Jane"}
```

> When using the update syntax (|), Elixir is aware that no new keys will be added to the struct, allowing the maps underneath to share their structure in memory.
> *  In the example above, both john and jane share the same key structure in memory.

* Structs can also be used in pattern matching, both for matching on the value of specific keys as well as for ensuring that the matching value is a struct of the same type as the matched value.

```elixir
%User{name: name} = john
# %User{age: 27, name: "John"}
name
# "John"
%User{} = %{}
# ** (MatchError) no match of right hand side value: %{}
```