def sum(number)
  array = number.to_s.split("")
  array.map! { |integer| integer.to_i }
  array.reduce { |sum, num| sum + num }
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#input is positive integer, output is sum of individual numbers in integer, another integer.
# convert to string, split, convert to integer, add up the sum, return integer.
# or convert to string, split, add up elements of array, return integer.