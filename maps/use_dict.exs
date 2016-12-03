defmodule Sum do
  def values(dict) do
    dict |> Dict.values |> Enum.sum
  end
end

# Sum a HashDict
hd = [ one: 1, two: 2, three: 3 ] |> Enum.into HashDict.new
IO.puts Sum.values(hd)

# Sum a Map

map = %{ four: 4, five: 5, six: 6 }
IO.puts Sum.values(map)

kw_list = [name: 'Dave', likes: 'Programming', where: 'Atlanta']
hashdict = Enum.into kw_list, HashDict.new
map = Enum.into kw_list, Map.new

IO.puts kw_list[:name]
IO.puts hashdict[:likes]
IO.puts map[:where]

hashdict = Dict.drop(hashdict, [:where, :likes])
hashdict = Dict.put(hashdict, :also_likes, "Ruby")
combo = Dict.merge(map, hashdict)
IO.puts combo[:also_likes]
IO.puts combo[:where]

kw_list = [name: 'Dave', likes: 'Programming', likes: 'Elixir']
IO.puts kw_list[:likes]
IO.puts Dict.get(kw_list, :likes)
IO.puts Keyword.get_values(kw_list, :likes)
