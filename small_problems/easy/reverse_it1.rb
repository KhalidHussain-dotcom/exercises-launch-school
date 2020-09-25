def reverse_sentence(string)
  array = string.split
  array.reverse!.join(" ")
end 



puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# input is a string, output is a string
# take a string, convert it to an array, reverse array, convert back to string.