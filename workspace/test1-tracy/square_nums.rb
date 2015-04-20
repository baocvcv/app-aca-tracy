# square_nums
# Takes a number max
# Returns the number of perfect squares less than max.

def square_nums(max)  
  i = 1
  while (i * i) < max
    i = i + 1
  end
  i = i - 1
  return i
end

puts(square_nums(5))
puts(square_nums(10))
puts(square_nums(25))