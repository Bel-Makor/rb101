# Write a method that takes one argument, a positive
# integer, and returns the sum of its digits.

def sum(int)
  int.digits.sum
end

def ls_sum_1(int)
  sum = 0
  str_digits = int.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

def ls_sum_2(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

puts ' '
puts 'Running my Solution: '
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts '-' * 30
puts 'Running Launch School Solution 1: '
puts ' '
puts ls_sum_1(23) == 5
puts ls_sum_1(496) == 19
puts ls_sum_1(123_456_789) == 45
puts ' '
puts '-' * 30
puts 'Running Launch School Solution 2: '
puts ' '
puts ls_sum_2(23) == 5
puts ls_sum_2(496) == 19
puts ls_sum_2(123_456_789) == 45
puts ' '
