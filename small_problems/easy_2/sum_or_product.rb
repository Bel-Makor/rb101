# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

def get_num
  puts '=> Please enter an integer greater than 0: '
  num = gets.chomp.to_i
  num <= 0 ? get_num : num
end

def get_operation
  puts "=> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  if operation == 's' || operation == 'p'
    operation
  else
    get_operation
  end
end


def sum_or_product
  num = get_num
  operation = get_operation
  if operation == 's'
    sum = (1..num).inject(:+)
    puts "The sum of the integers between 1 and #{num} is #{sum}."
  elsif operation == 'p'
    product = (1..num).inject(:*)
    puts "The product of the integers between 1 and #{num} is #{product}."
  else
    puts 'Please run the program again and enter a valid operation.'
  end
end

sum_or_product()
