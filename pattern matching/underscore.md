# The Underscore("_")

> ref: chatgpt

In Elixir, the underscore (_) is used as a placeholder when you want to ignore a variable in a pattern match or when you're not interested in the value. It's often used as a convention to indicate that a particular value is intentionally being ignored.

Here are some use cases for using _:

### 1. Ignoring Values

* In this example, you might not be interested in the value 42. It's a way of saying, "I know there's a value here, but I don't need to use it."

```elixir
_ = 42
# This is a valid match, but the value is ignored
```

### 2. ignoring parts of a Tuple or List

* In this case, you're interested in the first and third elements of the tuple, and you're ignoring the second one.

```elixir
{a, _, c} = {1, 2, 3}
# a is bound to 1, c is bound to 3, and the second element is ignored
```

### 3. Ignoring Function Return Values

* Here, you're ignoring the specific error details because you only care that there was an error, not the specifics.

```elixir
case File.read("some_file.txt") do
  {:ok, content} -> IO.puts("Read file contents: #{content}")
  {:error, _} -> IO.puts("Error reading file.")
end
```

### 4. Ignoring Function Parameters

* In this function, you're explicitly indicating that the first and third parameters are not used in the function body.

```elixir
def some_function(_, b, _) do
  IO.puts("I only care about the second parameter: #{b}")
end
```

> The underscore is a way to make your code more readable and to communicate to other developers (or to yourself) that a particular value is intentionally being disregarded in a given context. It also helps avoid compiler warnings about unused variables.

### usecase on DATE
