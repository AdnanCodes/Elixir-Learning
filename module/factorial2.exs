defmodule Factorial do
  def of(0) do
    1
  end

  def of(n) do
    if n < 0 do
      raise "factorial called on negative number"
    else
      n * of(n - 1)
    end
  end
end

# Runs Factorial of 5
Factorial.of(5)
# Runs Factorial of -2
Factorial.of(-2)
