defprotocol Structs.Protocol do
  def area(figure)
  def perimeter(figure)
end

# Implement to circle
defimpl Structs.Protocol, for: Structs.Circle do
  def area(c) do
    :math.pi * :math.pow(c.rad, 2)
  end

  def perimeter(c) do
    2 * :math.pi * c.rad
  end
end

# Implement to square
defimpl Structs.Protocol, for: Structs.Square do
  def area(s) do
    s.side * s.side
  end

  def perimeter(s) do
    4 * s.side
  end
end
