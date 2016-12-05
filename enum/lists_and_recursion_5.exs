defmodule ImplementEnum do
  def all?([], _), do: true
  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _), do: :ok
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
end

list = Enum.to_list 1..5
IO.puts ImplementEnum.all?(list, &(&1 < 4))
IO.puts ImplementEnum.all?(list, &(&1 < 6))
ImplementEnum.each(["some", "example"], fn(x) -> IO.puts x end)
