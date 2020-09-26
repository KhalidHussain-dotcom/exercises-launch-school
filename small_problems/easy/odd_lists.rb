#input is array
#output is new array with every other element added from input array.

def oddities(array)
  returned_array = []
  array.each_with_index do |element, index|
    if index.even?
      returned_array << element
    end
  end
  returned_array
end

def evenities(array)
  index = 1
  returned_index = []
  while index < array.size do
    returned_index << array[index]
    index += 2
  end
  returned_index
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
