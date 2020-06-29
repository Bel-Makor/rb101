# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be
# case-insenstive, and it should igmore all non-alphanumberic characters.
# If you wish, you may simplify things by calling the palindrome? method
# you wrote in the previous exercise.

def real_palindrome?(str)
  str.downcase.reverse.delete('^a-z0-9') == str.downcase.delete('^a-z0-9')
end

def gsub_palindrome?(str)
  str.downcase.gsub(/[^a-zA-Z0-9]/, '') == str.downcase.reverse.gsub(/[^a-zA-Z0-9]/, '')
end

puts 'Running My First Solution (Using String#delete): '
puts real_palindrome?('madam')            # => true
puts real_palindrome?('Madam')            # => true
puts real_palindrome?("Madam I'm Adam")   # => true
puts real_palindrome?('356653')           # => true
puts real_palindrome?('356a653')          # => true
puts real_palindrome?('123ab321')         # => true
puts ' '
puts '-' * 15
puts ' '
puts 'Since it was mentioned in the Solution / Discussion...'
puts 'Running Second Solution (String#gsbub)'
puts gsub_palindrome?('madam')
puts gsub_palindrome?('Madam')
puts gsub_palindrome?("Madam I'm Adam")
puts gsub_palindrome?('356653')
puts gsub_palindrome?('356a653')
puts gsub_palindrome?('123ab321')
puts ' '
