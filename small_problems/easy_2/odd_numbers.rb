# Print all odd numbers from 1 to 99, inclusive. All numbers should be
# printed on seperate lines.

puts 'Solution 1:'
100.times { |num| puts num if num % 2 != 0}
puts '-' * 30

puts 'Solution 2 (Launch School Example):'
value = 1
while value <= 99
  puts value
  value += 2
end
puts ' '
puts '-' * 30
puts ' '
puts 'Solution 3 (use Integer#upto):'
1.upto(99) { |num| puts num if num % 2 != 0 }
puts ' '
puts '-' * 30
puts ' '

puts 'Solution 4 (use Array#select):'
(1..99).select { |num| num % 2 != 0 }.each { |num| puts num }
puts ' '
puts '-' * 30
puts ' '

puts 'Solution 5 (use Integer#odd?):'
(1..99).each { |num| puts num if num.odd?}
puts ' '
puts '-' * 30
puts ' '
