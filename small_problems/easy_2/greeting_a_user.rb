# Write a program that will ask for users's name. The program
# will then greet the user.  If the user writes "name!" then
# the computer yells back to the user.


puts 'Running my Solution: '
puts 'What is your name?'
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name[0...-1].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end
puts ' '
puts '-' * 30
puts ' '
puts 'Running Launch School Solution: '

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chomp
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end
puts ' '
