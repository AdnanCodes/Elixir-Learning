"Elixir rocks" |> String.split()
# ["Elixir", "rocks"]
"Elixir rocks" |> String.upcase() |> String.split()
# ["ELIXIR", "ROCKS"]
# Line 3 could have be written otherwise as String.upcase(String.Split("Elixir Rocks")) in other langunages
# It is somewhat the reverse of stacking function calls, but more intuitive, Apply function on some something, chain it further to get your result
# Versus wrapping around the data
