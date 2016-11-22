defmodule MyList do
  def mapsum([], _), do: 0

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def reduce([], value, _), do: value

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def max([]), do: 0
  def max([head | tail]) do
    calculate_max(tail, head)
  end

  defp calculate_max([], value), do: value
  defp calculate_max([head | tail], value) when head > value do
    calculate_max(tail, head)
  end
  defp calculate_max([_head | tail], value) do
    calculate_max(tail, value)
  end
end

IO.puts MyList.mapsum [1,2,3], &(&1 * &1)
IO.puts MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))
IO.puts MyList.reduce([1,2,3,4,5], 1, &(&1 * &2))
IO.puts MyList.max([1,2,12,3,4,5])
