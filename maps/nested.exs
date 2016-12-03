defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %{}, details: "", severity: 1
end

# report = %BugReport{owner: %Customer{name: 'David', company: "L360"},
#                     details: "broken"}

# report.owner.company

# put_in(report.owner.company, "Listen360")

# update_in(report.owner.name, &("Mr. " <> &1))
