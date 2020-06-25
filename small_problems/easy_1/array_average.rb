# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

def average(arr)
  arr.inject { |sum, n| sum + n } / arr.length
end

def ls_average(numbers)
  sum = numbers.reduce(:+) #numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end


puts ' '
puts 'Running my Solution:'
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts ' '
puts '-' * 30
puts ' '
puts 'Running Launch School Solution:'
puts ls_average([1, 5, 87, 45, 8, 8]) == 25
puts ls_average([9, 47, 23, 95, 16, 52]) == 40
puts ' '
