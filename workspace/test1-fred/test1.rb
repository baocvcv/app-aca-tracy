# Code challenge 1

# Everything written in Ruby

# crazy_sum
# Input: array of integers
# Output: multiply each number in the array by its position in the array, and return the sum

def crazy_sum(numbers)
  
  result = 0
  
  for i in 0..(numbers.length - 1)
    result = result + i * numbers[i]
  end
  
  return result
end

# square_nums
# Input: integer max
# Output: the number of perfect squares less than max.

def square_nums(max)
  
  count = 0
  while ((count+1) * (count+1)) < max
    count = count + 1
  end

  return count
end

# crazy_nums
# Input: integer max
# Output an array of the integers that
#  - ARE less than max
#  - AND ARE divisible by either three or five
#  - BUT ARE NOT divisible by both three and five

def crazy_nums(max)
  
  arr = [] # store result
  count = 0
  
  for i in 0..(max - 1)
    if(i % 3 == 0) && (i % 5 == 0)
      next
    elsif (i % 3 == 0) || (i % 5 == 0)
      arr[count] = i
      count = count + 1
    end
  end
  return arr  
end

# these are for test and are not submitted 
puts(crazy_sum([2]) == 0) # (2*0)
puts(crazy_sum([2, 3]) == 3) # (2*0) + (3*1)
puts(crazy_sum([2, 3, 5]) == 13) # (2*0) + (3*1) + (5*2)
puts(crazy_sum([2, 3, 5, 2]) == 19) # (2*0) + (3*1) + (5*2) + (2*3)

puts(square_nums(5))
puts(square_nums(10))
puts(square_nums(25))

puts(crazy_nums(3))
puts(crazy_nums(10) == [3,5,6,9])
puts(crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18])