defmodule Structs do
  @enforce_keys(:a, :b) # para indicar valores obligatorios
  defstruct [:a, :b, :c = 30] # los valores por defecto van de ultimo
end
