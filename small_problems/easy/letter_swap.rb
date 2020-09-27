def swap(string)
  swapped_string = ''
  swapped_array = string.split(' ').each do |word|
                     holder = word[0]
                     word[0] = word[-1]
                     word[-1] = holder
                   end
  swapped_array.each_with_index do |word, index|
    swapped_string += word
    swapped_string += ' ' if swapped_array[index] != swapped_array[-1]
  end
  swapped_string
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'


# I could have just used the method .join instead of lines 8 - 11