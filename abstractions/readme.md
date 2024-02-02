## Abstrations
* In elixir abstractions are implemented with pure stateless modules
* Ina typical OO language, basic abstraction building blocks are classes and objects.
* Elixir on anther hand promotes decoupling of data from the code instead of classes it uses modules
* So instead of calling methods on objects you explicitly call module functions and provide input data via arguments.
  
```elixir
String.upcase("a string")
```
