defmodule User do
<<<<<<< HEAD
  defstruct [:name , :age ] #expects keys
 # defstruct [name: "Miguel",age: 35] # keys with difault values
end
=======
  #defing a struct
  # defstruct [:name, :age]  #expects keys
 defstruct [name: "Miguel",age: 35] # keys with difault values
end


# new_user=%User{name: "john doe", age: 49}
# IO.puts new_user.name
# IO.puts new_user.age

# john doe
# 49


# get_default = %User_B{}
# IO.puts get_default.name
# IO.puts get_default.age

# Miguel
# 35


# new_user_b= %User_B{name: "Miguel joe",age: 46}
# IO.puts new_user_b.name
# IO.puts new_user_b.age

# Miguel joe
# 46
>>>>>>> 768435ff3d65283c77f78c29b6d91d7754a3fe00
