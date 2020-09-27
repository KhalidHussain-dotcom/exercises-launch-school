DIGITS = { '0': 0, '1': 1, '2':2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7,
           '8': 8, '9': 9, '+': '+', '-': '-'}

def string_to_integer(string)
  value = 0
  array = string.split('').map { |element| DIGITS[element.to_sym] }
  array.each do |element|
    value = value * 10 + element if (element != '+') && (element != '-')
  end
  value *= -1 if array[0] == '-'
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

puts string_to_integer('4321') == 4321
puts string_to_integer('-570') == -570
puts string_to_integer('+100') == 100