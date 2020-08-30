defmodule ModuleFunctions do

  # function publica
  def function_public do
    :hello_world
  end

  # function privada
  defp function_private do # aridad 0
    :hello_world
  end

  # Funcion con argumentos
  def function_arguments(arg1, arg2) do # aridad 2
    arg1 <> arg2
  end

  # funcion con pattern matching
  def area({x0, x1}, {y0, y1}) do
    (x1 - x0) * (y1 - y0)
  end

  # Funcion condicional
  def area({x0, x1}, {y0, y1})
  when (x1 - x0) >= 0 and (y1 - y0) >= 0 do
    (x1 - x0) * (y1 - y0)
  end

  # Funcion con comprovacion de tipos
  @spec area({number, number}, {number, number}) :: number | {:error, String.t}
  def area({x0, x1}, {y0, y1})
  when (x1 - x0) >= 0 and (y1 - y0) >= 0 do
    (x1 - x0) * (y1 - y0)
  end

  # Funciones de una sola linea
  def area(_a, _b) do: {:error, "Argumentos no validos"} # "a" y "b" sse desprecian colocando "_" antes


end

# Para inspeccionar las funciones del modulo
ModFunc. # -> area/2 function_public/0, se presentan los datos como "function_name/aridad"
