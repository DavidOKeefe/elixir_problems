fizzbuzz = fn
  0, 0, c -> 'FizzBuzz'
  0, _, c -> 'Fizz'
  _, 0, c -> 'Buzz'
  _, _, c -> c
end

# IO.puts fizzbuzz.(0, 0, 0)
# IO.puts fizzbuzz.(1, 2, 3)
# IO.puts fizzbuzz.(0, 1, 2)
# IO.puts fizzbuzz.(:a, :b, :c)

buzzer = fn
 n ->  fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts "10: #{buzzer.(10)}"
IO.puts "11: #{buzzer.(11)}"
IO.puts "12: #{buzzer.(12)}"
IO.puts "13: #{buzzer.(13)}"
IO.puts "14: #{buzzer.(14)}"
IO.puts "15: #{buzzer.(15)}"
IO.puts "16: #{buzzer.(16)}"
