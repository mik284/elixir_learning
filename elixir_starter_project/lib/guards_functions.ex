defmodule GuardsFunctions do
  defguard check_age(age) when is_number(age) and age >= 18
  defguard check_age_less(age) when is_number(age) and age < 18
end



defmodule Guard_Implementation do
  import GuardsFunctions
  # def get_age(age) when is_number(age) and age >= 18 do
  #   IO.puts("You are an adult")
  # end

  # def get_age(age) when is_number(age) and age < 18 do
  #   IO.puts("You cannot drink")
  # end

   def get_age(age) when check_age(age) do
    IO.puts("You are an adult")
  end

  def get_age(age) when check_age_less(age) do
    IO.puts("You cannot drink")
  end

  def get_age(_agee) do
    {:error, "Invalid age details..."}
  end
end
