def multiply(number1, number2)
  number1 * number2
end

def square(number_to_be_squared)
  multiply(number_to_be_squared, number_to_be_squared)
end

def power_to_the_nth(number, power)
  product = 1
  (power - 1).times do
    product *= multiply(product, number)
  end
  product
end


puts square(5) == 25
puts square(-8) == 64

puts power_to_the_nth(2, 3) == 8
puts power_to_the_nth(1, 3) == 1