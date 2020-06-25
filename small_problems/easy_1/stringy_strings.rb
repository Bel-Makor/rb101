# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

def stringy(int)
  int % 2 == 0 ? '10' * (int / 2) : '10' * (int / 2) + '1'
end

def ls_stringy(int)
  numbers = []
  int.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

def modified_stringy(int, start = 1)
  numbers = []

  int.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
      numbers << number
    elsif start = 0
      number = index.even? ? 0 : 1
      numbers << number
    end
  end
  p numbers.join
end

def further_explored(int, num_1 = 1)
  numbers = []
  num_1 == 1 ? num_2 = 0 : num_2 = 1

  int.times do |index|
    number = index.even? ? num_1 : num_2
    numbers << number
  end
  p numbers.join
end



puts ' '
puts 'Running my Solution: '
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts ' '
puts '-' * 30
puts ' '
puts 'Running Launch School Solution: '
puts ls_stringy(6) == '101010'
puts ls_stringy(9) == '101010101'
puts ls_stringy(4) == '1010'
puts modified_stringy(7, 1) == '1010101'
puts ' '
puts '-' * 30
puts ' '
puts 'Running Modified Solution with Default Arguments: '
puts modified_stringy(6, 0) == '101010'
puts modified_stringy(9, 1) == '101010101'
puts modified_stringy(4, 0) == '1010'
puts modified_stringy(7, 1) == '1010101'
puts ' '
puts '-' * 30
puts ' '
puts 'Running Launch School Solution: '
puts further_explored(6, 0) == '101010'
puts further_explored(9, 1) == '101010101'
puts further_explored(4, 0) == '1010'
puts further_explored(7, 1) == '1010101'
puts ' '
