isDivisibleByThree = fn x -> rem(x, 3) === 0 end
isDivisibleByFive = fn x -> rem(x, 5) === 0 end
isDivisible = fn x -> isDivisibleByThree.(x) || isDivisibleByFive.(x) end
main = fn init, final -> Range.new(init, final - 1) |> Enum.filter(isDivisible) |> Enum.sum end

IO.inspect main.(1, 1000)
