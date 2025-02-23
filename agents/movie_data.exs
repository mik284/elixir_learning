defmodule MovieData do
  # define an agent
  # def start_link do
  #   Agent.start_link(fn -> %{} end)
  # end

  # def add_movie(pid, movie) do
  #   Agent.update(pid, fn state ->
  #     Map.put(state, movie, 1)
  #   end)
  # end

  # def reset_movie(pid) do
  #   Agent.update(pid, fn _state -> %{} end)
  # end

  # def watch_movie_count(pid, movie) do
  #   Agent.get(pid, fn state ->
  #     Map.get(state, movie, 0)
  #   end)
  # end

  # def watch_movie(pid, movie) do
  #   Agent.update(pid, fn state ->
  #     count = Map.get(state, movie, 0)
  #     Map.replace(state, movie, count + 1)
  #   end)
  # end

  # name the agent
  def start_link do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def stop do
    Agent.stop(__MODULE__)
  end

  def add_movie(movie) do
    Agent.update(__MODULE__, fn state ->
      Map.put(state, movie, 1)
    end)
  end

  def reset_movie do
    Agent.update(__MODULE__, fn _state -> %{} end)
  end

  def watch_movie_count(movie) do
    Agent.get(__MODULE__, fn state ->
      Map.get(state, movie, 0)
    end)
  end

  def watch_movie(movie) do
    Agent.update(__MODULE__, fn state ->
      count = Map.get(state, movie, 0)
      Map.replace(state, movie, count + 1)
    end)
  end
end
