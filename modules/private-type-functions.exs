defmodule Fun do
  def fun(a) when is_list(a) do
    true
  end

  defp fun(a) do
    false
  end
end

# This code is invalid due to some heads cannot be private and others public such as fun(a)
# The purpose of private functions is allow them to be called only from their respective Modules
