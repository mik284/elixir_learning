# List [...]
* In Elixir, a list is a fundamental data structure that represents a sequence of elements.
Lists in Elixir are implemented as linked lists, where each element in the list is a separate

* memory cell containing the actual value and a reference to the next element in the sequence

* The last element in the list has a reference to the special value nil, indicating the end of the list. Lists are simple collections of values which may include multiple types; lists may also include non-unique values

> Note: Elixir implements list collections as linked lists. This means that accessing the list length is an operation that will run in linear time (O(n))

* For this reason, it is typically faster to prepend than to append

```elixir
list = [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]
```
## Prepending (fast)
```elixir
#prepend
["π" | list]
["π", 3.14, :pie, "Apple"]
```
## Appending (slow)
```elixir
#Appending
list ++ ["Cherry"]
[3.14, :pie, "Apple", "Cherry"]
```

* In Elixir, lists are implemented as <u>linked lists</u>, which makes prepending (<i>adding elements to the front</i>) fast but appending (adding elements to the end) relatively slow. This behavior is due to the nature of linked lists

### Let's break down the examples you provided

## Original List
```elixir
list = [3.14, :pie, "Apple"]
```
* This creates a list containing three elements: 3.14, :pie, and "Apple"

## Prepending (Fast)
```elixir
["π" | list]
```
* This prepends the atom "π" to the front of the original list. Prepending is fast because it involves creating a new cons cell with the new element and pointing it to the existing list.
### The new list is 
```elixir
[ "π", 3.14, :pie, "Apple" ]
```

## Appending (Slow)
```elixir
list ++ ["Cherry"]
```
* This appends the string "Cherry" to the end of the original list. However, appending is slow for lists because it requires traversing the entire list to reach the end and then creating a new list with the additional element. The new list is [3.14, :pie, "Apple", "Cherry"]

> In functional programming languages like Elixir, it's common to use prepending for building lists due to its efficiency

* If you need to frequently add elements to the end of a collection, other data structures like Map or Keyword lists might be more suitable. Lists are optimized for fast access to the head (front) but not for the tail (end)

> It's worth noting that, in Elixir, strings are implemented as UTF-8 encoded binaries and are also efficient for concatenation operations. If your data involves a sequence of characters, using strings might be more appropriate than lists
