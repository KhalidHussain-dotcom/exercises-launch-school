# def print_in_box(string)
#   counter = 0
#   print '+'
#   while counter <= (string.length + 1) do
#     print '-'
#     counter += 1
#   end
#   print '+'
#   counter = 0
# end

def print_in_box(string)
  horizontal_rule = "+#{'-' * (string.length + 2)}+"
  empty_line = "|#{' ' * (string.length + 2)}|"
  puts horizontal_rule
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('')
