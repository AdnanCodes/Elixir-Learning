defmodule Factorial do
  def of(0) do
    1
  end

  def of(n) do
    n * of(n - 1)
  end
end

# This example of Elixir function showcases recursive solution
# Elixir functions run from top to bottom
# Base case must be first definition in named function
