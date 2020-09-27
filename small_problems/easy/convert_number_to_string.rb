STRING_DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6',
                 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(integer)
  integer *= -1 if integer < 0
  string = ''
  string_array = integer.digits.map do |digit|
                   STRING_DIGITS[digit]
                 end
  string_array.each do |string_digit|
    string = string_digit + string
  end
  string
end

def signed_integer_to_string(integer)
  number = integer_to_string(integer)
  if integer > 0
    number.prepend('+')
  elsif integer < 0
    number.prepend('-')
  end
  number
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'