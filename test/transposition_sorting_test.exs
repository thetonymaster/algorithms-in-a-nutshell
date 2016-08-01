defmodule TranspositionSortingTest do
  use ExUnit.Case
  alias Algorithms.TranspositionSorting

  test "transposition sorting" do
    input = [15, 9, 8, 1, 4, 11, 7, 12, 13, 6, 5, 3, 16, 2, 10, 14]
    result = TranspositionSorting.insertion_sorting(input)
    assert result == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  end
end
