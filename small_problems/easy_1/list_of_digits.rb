# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(int)
  int.to_s.split("").each.map { |num| num.to_i }
end

def brute_force(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

def idiomatic(number)
  number.to_s.chars.map(&:to_i) #=> something.map { |char| char.to_i }
end

puts ''
puts 'Running my solution: '
puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(374290) == [3, 7, 4, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

puts "-" * 30
puts
puts 'Running the Launch School brute force solution": '
puts brute_force(12345) == [1, 2, 3, 4, 5]
puts brute_force(7) == [7]
puts brute_force(374290) == [3, 7, 4, 2, 9, 0]
puts brute_force(444) == [4, 4, 4]

puts "-" * 30
puts
puts 'Running the Launch School idiomatic solution: '
puts idiomatic(12345) == [1, 2, 3, 4, 5]
puts idiomatic(7) == [7]
puts idiomatic(374290) == [3, 7, 4, 2, 9, 0]
puts idiomatic(444) == [4, 4, 4]
