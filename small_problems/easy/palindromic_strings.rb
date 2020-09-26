def palindrome?(string)
  string.reverse == string
end

def palindrome_array?(array)
  reverse_array = []
  array.each { |element| reverse_array.unshift(element) }
  array == reverse_array
end

def real_palindrome?(string)
  string.downcase.delete('^a-z0-9').reverse == string.downcase.delete('^a-z0-9')
end

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome_array?([1,2,1]) == true
puts palindrome_array?([1,2,3]) == false

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true