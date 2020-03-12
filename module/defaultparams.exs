defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect([p1, p2, p3, p4])
  end
end

# => ["a",2,3,"b"]
Example.func("a", "b")
# => ["a","b",3,"c"]
Example.func("a", "b", "c")
# => ["a","b","c","d"]
Example.func("a", "b", "c", "d")

defmodule Params do
  def func(p1, p2 \\ 123)

  def func(p1, p2) when is_list(p1) do
    "You said #{p2} with a list"
  end

  def func(p1, p2) do
    "You passed in #{p1} and #{p2}"
  end
end

# You passed in 99 and 123
IO.puts(Params.func(99))
# You passed in 99 and cat
IO.puts(Params.func(99, "cat"))
# You said 123 with a list
IO.puts(Params.func([99]))
# You said dog with a list
IO.puts(Params.func([99], "dog"))
