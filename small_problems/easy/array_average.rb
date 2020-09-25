def average(array)
  sum = 0
  array.each do |element|
    sum += element
  end 
  p (sum / array.count).to_f
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# input is an array, output is an integer
# iterate through array adding all numbers up then divide by size of array.
