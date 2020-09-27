ALPHABET = ('a'..'z').to_a

def cleanup(string)
  split_array = string.split('')
  fixed_string = ''
  split_array.each_with_index do |char, index|
    if ALPHABET.include?(char)
      fixed_string << char
    else
      fixed_string << ' ' unless fixed_string.end_with?(' ')
    end
  end
  fixed_string
end

puts cleanup("---what's my +*& line?") == ' what s my line '