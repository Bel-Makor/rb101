# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between
# 20 and 200.

# Futher Explanation:
# Modify this program to ask for a name, and then print the age
# for that person. For an extra challenge, use 'Teddy' as the
# name if no name is entered.

def persons_age()
  rand(20...200)
end

def get_name()
  puts "=> Please enter your name: "
  name = gets.chomp
  name.length == 0 ? 'Teddy' : name
end

puts "=> #{get_name} is #{persons_age} years old."
