iex(8)> list_concat = fn l1, l2 -> l1 ++ l2 end
#Function<12.54118792/2 in :erl_eval.expr/5>
iex(9)> list_concat.([:a, :b], [:c, :d])
[:a, :b, :c, :d]
iex(10)> sum = fn a, b, c -> a + b + c end
#Function<18.54118792/3 in :erl_eval.expr/5>
iex(11)> sum.(1,2,3)
6
iex(12)> pair_tuple_to_list = fn { a, b } -> [ a, b ] end
#Function<6.54118792/1 in :erl_eval.expr/5>
iex(13)> pair_tuple_to_list.({1234, 5678})
[1234, 5678]

handle_open = fn
   {:ok, file} -> "Read data: #{IO.read(file, :line)}"
   {_, error} -> "Error: #{:file.format_error(error)}"
end
