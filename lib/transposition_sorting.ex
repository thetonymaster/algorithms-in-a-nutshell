defmodule Algorithms.TranspositionSorting do
  def insertion_sorting(collection) do
    insert(collection, [])
  end

  defp sort([head | tail], ordered) do
    ordered = lookup(head, [], ordered)
    sort(tail, ordered)
  end
  defp sort([], ordered) do
    ordered
  end

  defp insert(to_order, lhs, []) do
    lhs ++ [to_order]
  end
  defp insert(to_order, lhs, [head | tail]) when to_order > head do
    insert(to_order, lhs ++ [head], tail)
  end
  defp insert(to_order, lhs, [head | tail]) when to_order < head do
    lhs ++ [to_order, head] ++ tail
  end
end
