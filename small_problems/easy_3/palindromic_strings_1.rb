# Write a metod that returns true if the string passed as an argument is
# apalindrome, false otherwise. A palindrome reads the same forward and
# backward. For this exercise, case matters as does punctutation and spaces.

# Further Exploration:
# Write a method that determines whether an array is palindromic; that is, the
# element values appear in the same sequence both forwards and backwards in the
# array. Now write a method that determines whether an array or a string is
# palindromic; that is, write a method that can take either an array or a
# string # argument, and determines whether that argument is a palindrome.
# You may not # use an if, unless, or case statement or modifier.

def palindrome?(arg)
  arg.reverse == arg  # Works for both strings and arrays.
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?([1, 2, 3, 3, 2, 1])
