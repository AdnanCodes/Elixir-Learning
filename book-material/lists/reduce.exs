defmodule MyList do
  # base case return the value
  def reduce([], value, _) do
    value
  end

  # reduce the value and recursively call anonymous function
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _fun) do
    0
  end

  def mapsum([head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end
end

'''
Comment blocks similar to Python

Simple summatation

>>MyList.reduce([1,2,3,4,5], 0 , &(1& + 2&))
>> 15
'''
