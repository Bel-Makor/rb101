# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.

def oddities_one(arr)
  sorted = []
  arr.each_with_index do |ele, index|
    if index % 2 == 0
      sorted.push(ele)
    end
  end
  sorted
end

def oddities_two(arr)
  sorted = []
  index = 0
  while index < arr.size
    sorted.push(arr[index])
    index += 2
  end
  sorted
end

def oddities_three(arr)
  sorted = []
  arr.each_with_index { |ele, idx| sorted.push(ele) if idx.even? }
  sorted
end

def oddities_four(arr)
  arr.select.with_index { |ele, idx| ele if idx.even? }
end


puts "Running My First Solution: "
p oddities_one([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities_one([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities_one(['abc', 'def']) #== ['abc']
p oddities_one([123]) #= [123]
p oddities_one([]) #== []
puts ' '
puts '-' * 20
puts "Running My Third Solution: "
p oddities_two([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities_two([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities_two(['abc', 'def']) #== ['abc']
p oddities_two([123]) #= [123]
p oddities_two([]) #== []
puts ' '
puts '-' * 20
puts ' '
puts "Running My Third Solution: "
p oddities_three([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities_three([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities_three(['abc', 'def']) #== ['abc']
p oddities_three([123]) #= [123]
p oddities_three([]) #== []
puts ' '
puts '-' * 20
puts ' '
puts "Running My Fourth Solution: "
p oddities_four([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities_four([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities_four(['abc', 'def']) #== ['abc']
p oddities_four([123]) #= [123]
p oddities_four([]) #== []
puts ' '
