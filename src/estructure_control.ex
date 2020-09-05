defmodule EstructureControl do

  def my_if(condition) do
    if condition do
      "verdadero"
    else
      "falso"
    end
  end

  def my_unless(condition) do
    unless condition do
      "falso"
    end
  end

  def my_cond(condition) do
    cond do
      condition > 5 -> "> 5"
      condition < 5 -> "< 5"
      true -> "false"
    end
  end

  def my_case() do
    case condition do
      {:ok, data} when is_integer(data) -> "Ok: #{data}"
      {:error, msg} -> "Error: #{msg}"
      _ -> "Not match"
    end
  end

  def mi_with(condition) do
    with {:ok %{"data" => data}, age} <- condition,
      [name: name, lastname: lastname] <- data do
      "#{name} #{lastname} tiene #{age} años"
    end
  end

end
