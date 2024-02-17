## Abstrations
* In elixir abstractions are implemented with pure stateless modules
* Ina typical OO language, basic abstraction building blocks are classes and objects.
* Elixir on anther hand promotes decoupling of data from the code instead of classes it uses modules
* So instead of calling methods on objects you explicitly call module functions and provide input data via arguments.
  
```elixir
String.upcase("a string")
```


* Another big difference from OO languages is that data is immutable
```elixir
iex(1)> list = []
[]
iex(2)> list = List.insert_at(list, -1, :a)
[:a]
iex(3)> list = List.insert_at(list, -1, :b)
[:a, :b]
iex(4)> list = List.insert_at(list, -1, :c)
[:a, :b, :c]
```
>> In these examples, you’re constantly keeping the result of the last operation and feeding
it to the next one

## Basic principles of data abstraction
* A module is in charge of abstracting some data.
   The module’s functions usually expect an instance of the data abstraction as the
first argument.
* Modifier functions return a modified version of the abstraction.
* Query functions return some other type of data.

## Abstracting with modules
MapSet module is a high-level data abstraction which implements Set and its a good example of
how to design an abstraction in elixir.

```elixir
iex(1)> days =
MapSet.new() |> <---Instances the abstraction
MapSet.put(:monday) |> <--- Modifies the abstraction
MapSet.put(:tuesday)
iex(2)> MapSet.member?(days, :monday) <--- Queries the abstraction
true
```

>> this approach follows the principles stated ealier, The code is slightly
simplified by using the pipeline operator to chain operations together. This is possible
because all the functions from the MapSet module take a set as the first argument. Such
functions are pipeline-friendly and can be chained with the |> operator.

>> NOTE You may think that abstractions like MapSet are something like user-defined
types. Although there are many similarities, module-based abstractions aren’t
proper data types. Instead, they’re implemented by composing built-in data types. For example, a MapSet instance is also a map, which you can verify by invoking is_map(MapSet.new()).

## Basic abstraction
The basic version of the to-do list will support the following features:
* Creating a new data abstraction
* Adding new entries
* Querying the abstraction