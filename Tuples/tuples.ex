
# In Elixir, a tuple is an ordered collection of elements. Tuples are similar to lists,
# but they have a fixed size and are typically used to group related pieces of data.
# Tuples are created using curly braces {}.


# Note : Tuples in Elixir are immutable, meaning their values cannot be changed after creation. Therefore,
#       you cannot directly append elements to an existing tuple. Instead, you create a new tuple with the desired elements.


# Here's a simple example of creating a tuple in Elixir:
my_tuple = {:apple, 5, "orange"}
IO.inspect(my_tuple)

# In this example, my_tuple is a tuple containing three elements: an atom :apple, the integer 5, and the string "orange".
# Tuples can contain elements of different data types.

# You can access elements in a tuple using pattern matching or the elem/2 function. Here are examples

# Using pattern matching
{fruit, quantity, color} = my_tuple
IO.puts("Fruit: #{fruit}, Quantity: #{quantity}, Color: #{color}")

# Using elem/2 function
first_element = elem(my_tuple, 0)
IO.puts("First element: #{first_element}")


#  In the pattern matching example, the values from the tuple are assigned to the variables fruit, quantity, and color.
#  In the elem/2 example, the elem/2 function is used to access the element at a specific index (indexes are zero-based in Elixir).


# check Tuple as a module
# Tuple.append() etc.
# => append(tuple, value)


# Tuples are commonly used in Elixir for returning multiple values from functions and for structuring data in a concise way.
