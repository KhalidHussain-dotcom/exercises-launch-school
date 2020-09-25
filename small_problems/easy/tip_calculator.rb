# Input is bill and tip rate
# Output is tip and total bill.

puts "What is the bill? "
bill = gets.chomp.to_f
puts "What is the tip percentage? "
tip_percentage = gets.chomp.to_f
tip = (bill * (tip_percentage / 100)).round(2)
total = (bill + tip).round(2)
puts "The tip is $%.2f" % [tip]
puts "The total is $%.2f" % [total]