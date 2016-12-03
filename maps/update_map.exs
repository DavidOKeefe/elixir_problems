m = %{ a: 1, b: 2, c: 3 }

m1  = %{ m | b: "two", c: "three" }

m2 = %{ m1 | a: "one" }

Dict.put_new(m2, :d, "four")
