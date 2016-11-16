defmodule MyList do
  def mapsum([], _), do: 0
  def mapsum([head | tail], func) do
    IO.puts "current head: #{head} current func.(head): #{func.(head)}"
    func.(head) + mapsum(tail, func)
  end

  def max([]), do: 0
  def max([head | tail]) do
    IO.puts "head: #{head}"
    max(tail)
  end

end

# IO.puts MyList.mapsum [1,2,3], &(&1 * &1)

IO.puts MyList.max([1,2,3], 0)
