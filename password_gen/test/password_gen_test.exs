defmodule PasswordGenTest do
  use ExUnit.Case
  # doctest PasswordGen

  # test "greets the world" do
  #   assert PasswordGen.hello() == :world
  # end

  # creating a default setup for testing
  setup do
    options = %{
      "length" => "10",
      "numbers" => "false",
      "uppercase" => "false",
      "symbol" => "false"
    }

    options_type = %{
      lowercase: Enum.map(?a..?z, & <<&1>>),
      numbers: Enum.map(0..9, & Integer.to_string(&1)),
      uppercase: Enum.map(?A..?Z, & <<&1>>),
      symbols: String.split("!#$%&()*+,-./:;<=>?@[]^_{|}~", "", trim: true)
    }

    {:ok, result} = PasswordGen.generate(options)

    %{
      options_type: options_type,
      result: result
    }
  end

  # now lets write some tests

  test "returns a string", %{result: result} do
    assert is_bitstring(result)
  end

  test "return a error when no length is given" do
    options = %{"invalid" => "false"}
    assert {:error, _error} = PasswordGen.generate(options)
  end

  test "return error when the length is not an integer" do
    options = %{"length" => "ab"}
    assert {:error, _error} = PasswordGen.generate(options)
  end

  test "length of returned string is the option provided" do
    length_option = %{"length"=>"5"}
    {:ok, result}=PasswordGen.generate(length_option)
    assert 5 = String.length(result)
  end

  test "returns a lowercase string just with the length", %{options_type: options} do
    length_option = %{"length"=> "5"}
    {:ok, result} = PasswordGen.generate(length_option)
    assert String.contains?(result, options.lowercase)

    refute String.contains?(result, options.uppercase)
    refute String.contains?(result, options.symbols)
    refute String.contains?(result, options.numbers)
  end

  test "returns error when options values aare not booleans" do
    options = %{
      "length" => "10",
      "numbers" => "invalid",
      "uppercase" => "0",
      "symbols" => "false"
    }

    assert {:error, _error} = PasswordGen.generate(options)
  end


  test "returns error when options not allowed" do
    options = %{"length" => "5", "invalid"=>"true"}

    assert {:error, _error} = PasswordGen.generate(options)
  end

  test "return error when 1 option not allowed" do
    options = %{"length" => "5", "invalid"=>"true", "numbers"=>"true"}

    assert {:error, _error} = PasswordGen.generate(options)
  end
end
