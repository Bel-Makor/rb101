# Using the multiply method from the "Multiplying Two Numbers" problem, write
# a method that computes the square of its argument (the square is the result of
# multiplying a number by itself.)

def multiply(arg1, arg2)
  arg1 * arg2
end

def square(num)
  multiply(num, num)
end

# Further Exploration:
# What if we wanted to generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc. How would we go about doing so
# while still using the multiply method?

def powered(num, power)
  product = 1
  power.times { product = multiply(product, num) }
  product
end

p square(5)
p square(-8)
p powered(2, 6)
