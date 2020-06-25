# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with words that contain five or more
# characters reversed.  Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.



def reverse_words(str)
  str.split(' ').each.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

def reversed_words(str)
  words = []

  str.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end
  words.join(' ')
end

puts ' '
puts 'Running my Solution: '
puts reverse_words('Professional') # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School') # => hcnuaL loohcS
puts '-' * 30
puts ' '
puts 'Running Launch School Solution: '
puts reversed_words('Professional') # => lanoisseforP
puts reversed_words('Walk around the block') # => Walk dnuora the kcolb
puts reversed_words('Launch School') # => hcnuaL loohcS
puts '-' * 30
puts ' '
