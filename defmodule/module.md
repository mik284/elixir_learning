# Function 
 * A <b>function</b> must always be a part of a module. Function names follow the same conventions
* As <b>variables</b>: they start with a lowercase letter or underscore character, followed by a combination of alphanumerics and underscores.
* As with variables, function names can end with the characters ? and !. 
* The ? character is often used to indicate a function that returns either true or false. Placing the
character ! at the end of the name indicates a function that may raise a runtime error.

* Both of these are conventions, rather than rules, but it’s best to follow them and respect the community style.
* Functions can be defined using the def construct:
```elixir
defmodule Geometry do
def rectangle_area(a, b) do
...
end
end  
```
* The definition starts with the def construct, followed by the function name, the argument list, and the body enclosed in a do...end block. 
* Because you’re dealing with a
dynamic language, there are no type specifications for arguments.
> NOTE: Notice that defmodule and def aren’t referred to as keywords. 
> That’s because they’re not! Instead, these are compilation constructs called macros.
* You don’t need to worry about how this works; it’s explained a bit later in this
chapter. If it helps, you can think of def and defmodule as keywords, but be
aware that this isn’t exactly true.
* If a function has no arguments, you can omit parentheses:

```elixir
defmodule Program do # Function declaration
def run do
# Function body
...
end
end
```