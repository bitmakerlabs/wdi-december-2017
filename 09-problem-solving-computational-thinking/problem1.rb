# Problem: Get the total sum of a list of numbers
# 1 2 5 11 1

# High-level plan
# Go through the list of numbers adding them up one by one to a counter/total

# Pseudocode
# numbers = [1,2,5,11,1]
numbers = [1,2,5,11,1]


# define method add_list_of_numbers(numbers)
def add_numbers_list(numbers)
  # total = 0
  total = 0

  # for each num in numbers {
  numbers.each do |num|
    # total = total + num
    total = total + num
  # }
  end
  # return total
  return total
# end
end

result = add_numbers_list([1,2,3,4,600])
puts result
