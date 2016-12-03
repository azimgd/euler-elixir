sequence = Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
isEven = fn x -> rem(x, 2) != 0 end
numberBoundary = fn boundary ->
  fn x -> x < boundary end
end

sum = sequence
  |> Stream.reject(isEven)
  |> Enum.take_while(numberBoundary.(4000000))
  |> Enum.sum

IO.inspect sum
