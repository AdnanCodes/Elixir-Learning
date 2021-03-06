defmodule Calculator do
  # Base case comes first, 0 zero cannot be added to change value
  def sum(0) do
    0
  end

  # Add given parameter and call function at decrements of parameter
  def sum(n) do
    n + sum(n - 1)
  end

  def gcd(x, 0) do
    x
  end

  def gcd(x, y) do
    gcd(y, rem(x, y))
  end
end
