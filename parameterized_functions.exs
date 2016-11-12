prefix = fn str -> (fn other_str -> "#{str} #{other_str}" end) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
