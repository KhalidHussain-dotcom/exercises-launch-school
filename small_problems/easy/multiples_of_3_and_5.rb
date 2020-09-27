def multisum(high_number)
  count = 1
  multiples_array = []
  while count <= high_number do
    multiples_array << count if (count % 3 == 0) || (count % 5 == 0)
    count += 1
  end
  multiples_array.inject { |sum, element| sum + element }
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
