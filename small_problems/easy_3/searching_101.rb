# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

numbers = []
puts '=> Enter the 1st number:'
numbers.push(gets.to_i)
puts '=> Enter the 2nd number:'
numbers.push(gets.to_i)
puts '=> Enter the 3rd number:'
numbers.push(gets.to_i)
puts '=> Enter the 4th number:'
numbers.push(gets.to_i)
puts '=> Enter the 5th number:'
numbers.push(gets.to_i)
puts '=> Enter the last number:'
num_6 = gets.to_i
p numbers

if numbers.include?(num_6)
  puts "=> The number #{num_6} appears in #{numbers}."
else
  puts "=> The number #{num_6} does not appear in #{numbers}."
end
