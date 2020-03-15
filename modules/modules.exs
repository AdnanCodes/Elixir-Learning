defmodule Mod do
  def func1() do
    IO.puts("In func1")
  end

  def func2() do
    func1()
    IO.puts("in func2")
  end
end

Mod.func1()
Mod.func2()

# Modules provides namespaces for things you define. Encapsulating named functions. Act as wrappers for macros, structs, protocols and other modules

defmodule Example do
  def func1 do
    List.flatten([1, [2, 3], 4])
  end

  def func2 do
    import List, only: [flatten: 1]
    flatten([5, [6, 7], 8])
  end
end

# Import directive allows to call said function without specifying the module name

defmodule Example2 do
  def compile_and_go(source) do
    alias My.Other.Module.Parase, as: Parser
    alias My.Other.Module.Runner, as: Runner

    source
    |> Parser.parse()
    |> Runner.execute()
  end
end

# Alias directive is basically renamer
