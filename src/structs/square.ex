defmodule Structs.Square do
  defstruct [:side]

  # Comportamiento por defecto
  def area(%__MODULE__{side: s}) do
    :math.pow(s, 2)
  end
end
