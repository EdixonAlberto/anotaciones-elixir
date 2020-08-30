defmodule User do

  defstruct name: "", lastname: ""

  def sail(user = %User{name: name}) when name != "" do
    IO.puts "Mi nombre es #{user.name}"
  end

end