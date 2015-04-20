# crazy_sum
# takes array of integers
# multiply each number in the array by its position in the array, and return the sum

def crazy_sum(numbers)
  i = 0
  sum = 0
  
  while i < numbers.length
    sum = sum + i * numbers[i]
    i = i + 1
  end
  
  return sum
end

puts(crazy_sum([2]) == 0) # (2*0)
puts(crazy_sum([2, 3]) == 3) # (2*0) + (3*1)
puts(crazy_sum([2, 3, 5]) == 13) # (2*0) + (3*1) + (5*2)
puts(crazy_sum([2, 3, 5, 2]) == 19) # (2*0) + (3*1) + (5*2) + (2*3)