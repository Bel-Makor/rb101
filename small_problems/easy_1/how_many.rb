# Write a method that counts the number of occurrences of
# each element in a given array.

# The words in the array are case-senstive: 'suv' != 'SUV'
# Once counted, print each element alongside the number of
# occurences
def count_occurences(vehicles)
  vehicle_count = Hash.new(0)
  vehicles.each { |vehicle| vehicle_count[vehicle] += 1 }
  vehicle_count.each_pair { |k, v| puts "#{k} => #{v}"}
end


def counting_occurences(array)
  occurences = {}
  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
puts "Running my solution: "
count_occurences(vehicles)
puts " "
puts "-" * 30
puts "Runny Launch School solution: "
counting_occurences(vehicles)
puts " "
