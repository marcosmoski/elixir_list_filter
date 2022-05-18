defmodule ElixirListFilterTest do
  @moduledoc false
  use ExUnit.Case
  doctest ElixirListFilter
    describe "call/1" do
      test "test list filter" do
        list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "O Q Q É ISSO"]

        result = assert ElixirListFilter.call(list)
        result == "test"
      end
    end
  end
