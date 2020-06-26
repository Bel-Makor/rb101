# Create a simple tip calculator. The program should prompt for a bill
# amount and a tip rate. The program must compute the tip and then display
# both the tip and the total amount of the bill.

# Further Exploration:
# Our solution prints the results as $30.0 and $230.0 instead of the more usual
# $30.00 and $230.00. Modify your solution so it always prints the results
# with 2 decimal places.

puts "=> What is the bill?"
bill = gets.to_f

puts "=> What is the tip percentage? "
tip_percentage = gets.to_f / 100

tip = (tip_percentage * bill).round(2)
total = bill + tip

puts "The tip is $#{sprintf('%.2f', tip)}."
puts "The total is $#{sprintf('%.2f', total)}."
