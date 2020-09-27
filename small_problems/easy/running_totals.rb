# def running_total(first_array)
#   second_array = []
#   first_array.each_with_index do |element, index|
#     second_array << (element + (second_array[index - 1]).to_i)
#   end
#   second_array
# end

def running_total(first_array)
  sum = 0
  first_array.map { |element| sum += element }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
