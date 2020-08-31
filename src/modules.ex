# Modulo escrito en UpperCase
defmodule ModuleName do
  # Alias
  alias Test, as: T
  alias ModFunc.ModuleB # -> es igual que colocar "alias ModFunc.ModuleB, as: ModuleB"

  # Import
  import List
  import Test, only: [uno: 0] # -> importa la funcion uno
  import Test, except: [uno: 0]:  # -> importa todas las funciones ignorando la uno

  # Sub modulo
  defmodule ModuleA do
    def a do
      ModFunc.funcion()
    end
  end

  def function do
    # Si solo se va usar en una sola funcion se recomienda importar dentro de la funcion
    import Test, only: [uno: 0]

    T.uno()

    ModuleA.a()

    ModuleB.b()
  end

  # Macro
  use GenServer

  # Atributo de modulos
  @value 10

  # Atributo de anotacion
  @moduledoc """
    anotacion

  ## Example
  """
end
