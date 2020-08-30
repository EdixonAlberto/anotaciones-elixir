defmodule ModuleName do
  def getName do
    # MODE 1
    # name = get_name()
    # message = format_message name
    # show_message message

    # MODE 2
    # show_message(format_message(get_name()))

    # MODE 3
    # show_message format_message get_name()

    # MODE 4
    get_name() |> format_message |> show_message
  end

  def get_name do
    IO.gets('introducir nombre: ')
  end

  def format_message(name) do
    "Hola #{name}"
  end

  def show_message(message) do
    IO.puts message
  end
end
