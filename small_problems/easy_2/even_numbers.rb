# Print the even numbers from 1 to 99, inclusive. All numbers
# should be printed on seperate lines.

puts 'Solution 1: '
(1..99).each { |num| puts num if num % 2 == 0 }
puts ' '
puts '-' * 5
puts ' '

puts 'Solution 2 (Launch School Example): '
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
puts ' '
puts '-' * 5
puts ' '
