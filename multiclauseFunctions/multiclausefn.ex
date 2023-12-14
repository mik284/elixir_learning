test_num =
  fn
    x when is_number(x) and x < 0 ->
      :negative

    0 ->
      :zero

    x when is_number(x) and x > 0 ->
      :positive
  end


# You can now test this lambda:
# iex(4)> test_num.(-1)
# :negative
# iex(5)> test_num.(0)
# :zero
# iex(6)> test_num.(1)
# :positive
