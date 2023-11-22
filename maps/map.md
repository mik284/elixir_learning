# Map %{...=>...}
* Maps are collections of data stored in key-value pairs.

```elixir
#example of a map
employee=%{"name"=>"","last name"=>""}
employee["name"]

# output: ""
```

```elixir
#example of a update map
mike=%{employee | "name"=>"michael","last name"=>"kamau"}
mike["name"]

# output: "michael"
```

```elixir
#example of a map with an atom
letters=%{:a=>"A", :b=>"B", :c=>"C", :d=>"D"}
letters.a

# output: "A"
```

* Keys in maps can be accessed through some of the functions in this module (such as Map.get/3 or Map.fetch/2) or through the map[] syntax provided by the Access module:

```elixir
map = %{a: 1, b: 2}
Map.fetch(map, :a)
{:ok, 1}
map[:b]
2
map["non_existing_key"]
nil
```

* To access atom keys, one may also use the map.key notation. Note that map.key will raise a KeyError if the map doesn't contain the key :key, compared to map[:key], that would return nil.

> ### Note: 
* The two syntaxes for accessing keys reveal the dual nature of maps. The map[key] syntax is used for dynamically created maps that may have any key, of any type. 
* <b>map.key</b> is used with maps that hold a predetermined set of atoms keys, which are expected to always be present.
* 
> ### Avoid parentheses
* Do not add parentheses when accessing fields, such as in <b>data.key()</b>. If parentheses are used, Elixir will expect data to be an atom representing a module and attempt to call the function key/0 in it.
* 
### Maps do not accept duplicate keys for example
```elixir
laptop=%{brand: "Hp", storage: 500, brand: "Dell"}
#warning: key :brand will be overridden in map
#cell:hnybcvj5434zwgs3bx4elxan3iidrho3:1
%{brand: "Dell", storage: 500}
```