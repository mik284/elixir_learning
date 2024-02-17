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