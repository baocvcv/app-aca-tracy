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

# crazy_nums
# Takes a number, max
# Returns an array of the integers that
#  ARE less than max
#  AND ARE divisible by either three or five
#  BUT ARE NOT divisible by both three and five

def crazy_nums(max)
  nums = [] # store result
  i = 0
  count = 0
  
  while i < max
    if(i % 3 == 0) && (i % 5 == 0)
      
    elsif (i % 3 == 0) || (i % 5 == 0)
      nums[count] = i
      count = count + 1
    end
    i = i + 1
  end
  return nums  
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