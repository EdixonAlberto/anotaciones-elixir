defmodule PatternMatching do

  def is_prime?(nro) when is_integer(nro) do
    is_prime_p?(nro, 2, rem(nro, 2))
  end

  # MODO DESCOMPUESTO
  defp is_prime_p?(1, _div, _res), do: true

  defp is_prime_p?(nro, nro, _res), do: true

  defp is_prime_p?(_nro, _div, 0), do: false

  defp is_prime_p?(nro, div, _res) do
    is_prime_p?(nro, div + 1, rem(nro, div +1))
  end

  # MODO COMPUESTO
  # defp is_prime_p?(nro, div, res) do
  #   case {div, res} do
  #     {^nro, _res} -> true
  #     {_div, 0} -> false
  #     _ -> is_prime_p?(nro, div + 1, rem(nro, div +1))
  #   end
  # end

  def add_list(list) when is_list(list) do
    add_list_p(list, 0)
  end

  defp add_list_p([h | t], acc) do
    add_list_p(t, acc + h)
  end


  defp add_list_p([], acc) , do: acc
end

[a, b] = [1, 2] # -> [1, 2]
[a, b] = [1] # -> :error
[a, b] = [1, 2, 3] # -> :error

a = :k # -> :ok
[{^a, 2}, b] = [{"hello", 2}, "world"] # -> :error
[{^a, 2}, b] = [{:ok, 2}, "world"] # -> [{:ok, 2}, "world"]

# No se pueden asignar multiples valores a una misma variable en pattern matching
{a, a} = {1, 2} # -> :error
{a, a} = {2, 2} # -> {2, 2}

# Cabezera y cola
[h | t] = [1, 2, 3] # -> [1, 2, 3]
h # -> 1
t # -> [2, 3]

[a, b | t] = [1, 2, 3] # -> [1, 2, 3]
a # -> 1
b # -> 2
t # -> [3]

[a, b, c | t] = [1, 2, 3] # -> [1, 2, 3]
a # -> 1
b # -> 2
c # -> 3
t # -> []

[h | t] = [] # -> :error

list = [0, 1, 2, 3] # -> [0, 1, 2, 3]
list = [-2, -1 | list] # -> [-2, -1, 0, 1, 2, 3]

map = %{uno: 1, dos: 2} # -> %{dos: 2, uno: 1}
%{dos: dos} = map # -> %{dos: 2, uno: 1}

key = :uno
%{key => dos} =  map # -> :error
%{^key => dos} =  map # -> %{dos: 2, uno: 1}
