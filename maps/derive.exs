# derive Access has been removed:
# https://github.com/elixir-lang/elixir/issues/2973

defmodule Attendee do
  @derive [Enumerable, Access]
  defstruct name: "", paid: false, over_18: true
end

# a = %Attendee{name: 'Sally', over_18: true}
# a[:name]
# a[:over_18]
# a.name
