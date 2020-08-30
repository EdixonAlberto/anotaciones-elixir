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

end

# Para inspeccionar las funciones del modulo
ModFunc. # -> area/2 function_public/0, se presentan los datos como "function_name/aridad"
