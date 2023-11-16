# Pipe Operator (|>)

### Read this: https://elixirschool.com/en/lessons/basics/pipe_operator

## The pipe operator |> passes the result of an expression as the first parameter of another expression.

### chatgpt

- In Elixir, the pipe operator (|>) is used to chain the output of one function into the input of another function, making the code more readable and expressive. It is often referred to as the "pipe" operator because it resembles a pipe that directs the output of one function as input to another.

Programming can get messy. So messy in fact that function calls can get so embedded that they become difficult to follow. Take the following nested functions into consideration:

```elixir
foo(bar(baz(new_function(other_function()))))
```

Here, we are passing the value other_function/0 to new_function/1, and new_function/1 to baz/1, baz/1 to bar/1, and finally the result of bar/1 to foo/1. Elixir takes a pragmatic approach to this syntactical chaos by giving us the pipe operator. The pipe operator which looks like |> takes the result of one expression, and passes it on. Let’s take another look at the code snippet above rewritten using the pipe operator.

```elixir
 other_function() |> new_function() |> baz() |> bar() |> foo()
```

The pipe takes the result on the left, and passes it to the right hand side.

For this set of examples,
we will use Elixir’s String module.

Tokenize String (loosely)

```elixir
"Elixir rocks" |> String.split()
["Elixir", "rocks"]
```

Uppercase all the tokens

```elixir
"Elixir rocks" |> String.upcase() |> String.split()
["ELIXIR", "ROCKS"]
```

Check ending

```elixir
"elixir" |> String.ends_with?("ixir")
true
```

Here's a simple example to illustrate how the pipe operator works:

```elixir
result = "Hello, World!"
        |> String.upcase()
        |> String.reverse()

IO.puts(result)
```

1. The initial string "Hello, World!" is passed as the first argument to the String.upcase/1 function, which converts the string to uppercase.
2. The result of the first operation (the uppercase string) is then passed as the first argument to the String.reverse/1 function, which reverses the string.
3. The final result is stored in the variable result and printed to the console.

This code is equivalent to the following without using the pipe operator:
```elixir
result = String.reverse(String.upcase("Hello, World!"))
IO.puts(result)
```

### Try to make result an array

## NB:
> The pipe operator enhances the readability of the code, especially when dealing with a sequence of operations, by allowing you to read the operations from left to right. It is a key feature of Elixir that promotes a functional and compositional programming style.