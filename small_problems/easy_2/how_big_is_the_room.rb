# Build a program that asks a user for the length and width of a room
# in meters and then displays the area of the room in both square meters
# and square feet.

# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# Further Exploration:
# Modify this program to ask for the input measurements in feet, and display
# the results in square feet, square inches and square centimeters.

SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQMETERS = 0.092903
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTS = 929.03

def get_length()
  puts "=> Enter the length of the room in feet: "
  length = gets.chomp.to_f
end

def get_width()
  puts "=> Enter the length of the room in feet: "
  width = gets.chomp.to_f
end

length = get_length
width = get_width
sqfeet = length * width

puts "=> The area of the room is #{sqfeet.round(2)} square feet, or "
puts "=> #{(SQFEET_TO_SQMETERS * sqfeet).round(2)} square meters, or "
puts "=> #{(SQFEET_TO_SQINCHES * sqfeet).round(2)} square inches, or "
puts "=> #{(SQFEET_TO_SQCENTS * sqfeet).round(2)} square centimeters."
