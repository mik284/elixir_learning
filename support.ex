defmodule Support do
  IO.puts("WE ARE HERE TO SUPPORT YOU!")
  def greetings_Hi(name) do
    date = Date.to_iso8601(Date.utc_today())
    IO.puts("#{date}: Hello #{name}, how can i help you today?")
  end
end
