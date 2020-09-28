#input is string
#output is string with all duplicate characters in a row removed.

def crunch(string)
  new_string = []
  string.split('').each do |char|
    if new_string.last != char
      new_string << char
    end
  end
  new_string.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''