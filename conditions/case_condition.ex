defmodule CaseCondition do
  def max(a, b) do
    case a >= b do
      true -> a
      false -> b
    end
  end
end
