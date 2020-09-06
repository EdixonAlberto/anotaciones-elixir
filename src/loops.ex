defmodule Loops do

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n) when n > 0 do
    fib(n - 1) + fib(n - 2)
  end

  def fact(1), do: 1
  def fact(n) when n > 0 do
    n * fact(n - 1)
  end

  # Tail Call Optimization

  def fact_TCO(n) when n > 0 do
    di_fact_TCO(n, 1)
  end

  defp do_fact_TCO(1, acc), do: acc
  defp do_fact_TCO(n, acc) do
    do_fact_TCO(n - 1, n * acc)
  end

  # Lista y Recursividad

  def add_list([], _x), do: []
  def add_list([h | t] = l, x) when is_list(l) and is_number(x) do
    [h + x | add_list(t, x)]
  end

  def add_list_TCO(l, x), when is_list(l) and is_number(x) do
    do_add_list_TCO(l, x, []) |> Enum.reverse()
  end

  defp _doadd_list_TCO([], _x, acc), do: acc
  defp do_add_list_TCO([h | t], x, acc) do
    do_add_list_TCO(t, x, [h + x | acc])
  end
  # En estos casos es mas eficiente la recursividad normal que la de cola, debido
  # al uso de "Enum.reverse"

  # El for es un generador de listas
  def my_for() do
    for elem <- 1..10 do
      elem
    end
  end

  def filter_for(l) do
    for {:true, elem} <- l do
      elem
    end
  end

end
