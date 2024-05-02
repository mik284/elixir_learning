# Example 1

numbers = [1, 2, 3, 4, 5]

sum = numbers
      |> Enum.map(&(&1 * 2))    # Multiply each element by 2
      |> Enum.filter(&(&1 > 5)) # Filter elements greater than 5
      |> Enum.sum()             # Calculate the sum

IO.puts(sum)  # Output: 18


# Example 2
add_and_double = fn x -> x + 1 end |> (&(2 * &1)).()

IO.puts(add_and_double.(3))  # Output: 8


# The second example shows how to use the pipe operator with a list of numbers, applying multiple transformations.
# The third example demonstrates using the pipe operator with an anonymous function.
