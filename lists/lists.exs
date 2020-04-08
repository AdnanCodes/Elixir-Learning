defmodule MyList do
  # if empty list do not add length
  def len([]), do: 0

  # Elixir splits given list into head and tail, you can recursively call on tail and keep adding 1 as long tail doesn't become empty list, then stop.
  def len([_head | tail]), do: 1 + len(tail)

  # underscore acts placeholder and you can use to make it easier to detect unused variables or parameters

  # recursive squaring calls
  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  # map function similar to JavaScript map method on arrays accepts callback

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
end
