person = %{ name: 'David', height: '1.88' }
%{ name: a_name } = person
IO.puts a_name

%{ name: _, height: _ } = person
%{ name: 'David' } = person
# %{ name: _, weight: _ } = person

people = [
  %{ name: 'Grumpy',    height: 1.24 },
  %{ name: 'David',     height: 1.88 },
  %{ name: 'Dopey',     height: 1.32 },
  %{ name: 'Shaquille', height: 2.16 },
  %{ name: 'Sneezy',    height: 1.28 }
]

for person = %{ height: height } <- people,
  height > 1.5,
  do: IO.inspect person
