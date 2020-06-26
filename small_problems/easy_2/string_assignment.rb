# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? THink about it for a moment
# before continuing.

# If you said that code printed
# 1 Alice
# 2 Bob

# You are 100% correct, and the answer should come as no surprise. Now,
# let's look at something a bit different.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain the results?

puts 'Solution: '
puts 'This prints out: '
puts '1 BOB'
puts '2 BOB'

puts 'This happens since save_name is still pointing to the same '
puts 'memory address, and the string contained in "name" was mutated.'
