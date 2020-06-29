# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end

puts palindromic_number?(34543)      # => true
puts palindromic_number?(123210)     # => false
puts palindromic_number?(22)         # => true
puts palindromic_number?(5)          # => true

def palindromic_zero?(num)
  sprintf('0%o', num) == sprintf('0%o', num).reverse
end

# Leading zeroes in front of a number in Ruby indicate an Octal Literal
# Use Integer#to_s(base=10), passing in (8) to strip the leading zeros
# that indicate octals.
puts palindromic_zero?(00012344321) # => false, since the above method
                                      #    doesn't convert from an octal
