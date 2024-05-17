defmodule EnumerableFile do
  def test(lista)do
    lista |> Enumerable.count
  end

end

{lable, count}=EnumerableFile.test([1,2,3,5])

IO.inspect(lable)
IO.inspect(count)
