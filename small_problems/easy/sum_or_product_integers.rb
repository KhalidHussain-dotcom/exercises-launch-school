print "Please enter an integer greater than 0: "
integer = gets.chomp.to_i
print "Enter 's' to compute the sum, 'p' to compute the product: "
operation = gets.chomp
sum = 0
product = 1
# (1..integer).each { |n| sum += n }
# (1..integer).each { |n| product *= n }
sum = (1..integer).inject { |total, n| total + n }
product = (1..integer).inject { |total, n| total * n }
if operation == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif operation == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product}."
end
