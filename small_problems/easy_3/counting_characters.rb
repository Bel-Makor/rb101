# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted
# as a character.

puts 'Running my Solution: '
puts '=> Please write a word or multiple words: '
str = gets.chomp
counted = str.split(' ').join('').each_char.count
puts "There are #{counted} characters in \"#{str}\""
puts ' '
puts '*' * 30
puts ' '
puts 'Running Launch School Solution: '
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
puts ''
