defmodule PasswordGen do
  @moduledoc """
  Generates random password depeding on the parameters, module main function id `genrate(options)`
  That function takes the options map.
  options example:
      options = %{
        "length" => "5",
        "numbers" => "false",
        "uppercase" => "false",
        "symbols" => "false"
      }
    The options are only 4, `length`, `numbers`, `uppercase`, `symbols`.
  """
  @allowed_options [:length, :numbers, :uppercase, :symbols]
  @doc """
  Generate password for given options:

  ## Examples
      options = %{
         "length" => "5",
        "numbers" => "false",
        "uppercase" => "false",
        "symbols" => "false"
      }
      iex> PasswordGen.generate(options)
      "abcdf"

       options = %{
         "length" => "5",
        "numbers" => "true",
        "uppercase" => "false",
        "symbols" => "false"
      }

      iex> PasswordGen.generate(options)
      "abcdf45"
  """
      def generate(options) do

      end
end
