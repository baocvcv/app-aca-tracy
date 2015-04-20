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

puts(crazy_nums(3))
puts(crazy_nums(10) == [3,5,6,9])
puts(crazy_nums(20))
