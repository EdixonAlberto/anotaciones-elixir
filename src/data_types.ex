# ATOMOS
a = :error # -> :error
b = :"Elixir.Atom" # -> Atom
c = Atom # -> Atom
# Elixir crea un atomo proveniente de Elixir a cualquier valor que comience con mayusculas

# Para saber los detalles del atomo creado
# i ATOM_NAME

# Para saber el nombre del atomo de la terminal
Node.self() # -> :nonode@nohost

# La funcion puts devuelve un atomo: ":ok"
IO.puts("Hello World!")
# Hello World!
# :ok

# Transformar string a atomos
String.to_atom("error") # -> :error

# INTEGER
10 # -> 10
10000 # -> 1000
# en binario
0b1010 # -> 10
# en octal
0o12 # -> 10
# en hexa
0xA # -> 10

# REALES
1.0e3 # -> 1000

# BOLLEAN -> ATOMOS
true
false
nil

# TUPLAS
tupla = {1, "uno", :uno} # -> {1, "uno", :uno}
sub_tupla = {1, "uno", :uno, {1}} # -> {1, "uno", :uno, {1}}

# Para acceder a una tupla
elem(tupla, 2) # -> :uno
elem(tupla, 1) # -> "uno"

# LISTAS
list = [1, "uno", :uno] # -> [1, "uno", :uno]

# Para modificar una lista
list = [0] ++ list # -> [0, 1, "uno", :uno]

#  LIST - KEY (Lista de claves)
list = [{:uno, 1}, {:dos, 2}, {:dos, "dos"}] # -> [uno: 1, dos: 3, dos: "dos"]
list_alias = [uno, 1, dos: 2, dos: "dos"] # -> [uno: 1, dos: 3, dos: "dos"]

Keyword.get_values(list, :dos) # -> [2, "dos"]

# Ejemplos usando lista de claves
if(true, [do: true, else: false]) # -> true

# STRING
string = "Hello World" # -> Hello World
?0 # -> 48
"Hola" == 'hola' # -> false

# "Hola" es una secuenta de binarios codificadas en UTF-8
# 'hola' es una lista de caracteres UTF-8

# MAPAS
map = %{"key" => 42, key: 75} # -> %{:key => 75, "key" => 42}
map.key # -> 75
map[:key] # -> 75
map["key"] # -> 42

# FUNCTION

function = fn(x, y) -> x + y end # Anonima
function = &(&1 + &2) # resumida
function.(1, 2) # -> 3

function2 = $elem / 2 # el 2 representa la aridad
function2.({1, 2}, 0) # -> 1

# Ejemplo usando pattern matching
# El orden aqui importa
function3 = fn
  (_, _, 0) -> nil
  (x, x, x) -> 2
  (x, y, z) -> (x + y) / z
end
function3(5, 6, 0) # -> nil
function3(1, 1, 1) # -> 2
function3(1, 1, 2) # -> 1.0

# PATTERN MATCHING
