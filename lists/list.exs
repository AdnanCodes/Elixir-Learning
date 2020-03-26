defmodule Mylist do
  # if empty list do not add length
  def len([]), do: 0

  # Elixir splits given list into head and tail, you can recursively call on tail and keep adding 1 as long tail doesn't become empty list, then stop.
  def len([_head | tail]), do: 1 + len(tail)

  # underscore acts placeholder and you can use to make it easier to detect unused variables or parameters
end
