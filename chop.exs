defmodule Chop do
  def guess(actual,(min..max)) when actual < div(min + max, 2) do
    IO.puts "Is it #{current_guess(min, max)}"
    guess(actual, min..current_guess(min, max))
  end

  def guess(actual,(min..max)) when actual > div(min + max, 2) do
    IO.puts "Is it #{current_guess(min, max)}"
    guess(actual, (current_guess(min, max)..max))
  end

  def guess(actual,(min..max)) when actual == div(min + max, 2) do
    IO.puts "Is it #{current_guess(min, max)}"
    IO.puts current_guess(min, max)
  end

  def current_guess(min, max) do
    div(min + max, 2)
  end
end
