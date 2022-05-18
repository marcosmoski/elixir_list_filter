defmodule ElixirListFilter do
  @moduledoc false
  def call(list), do: filter(list, [])

  defp filter([], remainder) do
    remainder
  end

  defp filter(list, remainder_list) do
    remainder = Enum.find(list, fn x -> is_integer(x) && rem(x, 2) == 1 end)
    # IO.inspect("Remainder")
    # IO.inspect(remainder)
    if remainder == nil do
      # IO.inspect("Remainder list")
      # IO.inspect(remainder_list)
      filter([], remainder_list)
    else
      list = list -- [remainder]
      remainder_list = remainder_list ++ [remainder]
      # IO.inspect("List")
      # IO.inspect(list)
      filter(list, remainder_list)
    end
  end
end
