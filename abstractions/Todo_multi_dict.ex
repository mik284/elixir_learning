defmodule TodoList do
  def new(), do: MultiDict.new()

  def add_entry(todo_list, date, title) do
    MultiDict.add(todo_list, date, title)
  end

  def entries(todo_list, date) do
    MultiDict.get(todo_list, date)
  end
end


#classical separation of concerns,
#here you extract a distinct responsibility
#into a separate abstraction, and then create another abstraction on top of it.
