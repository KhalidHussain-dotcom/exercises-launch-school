print "Please write word or multiple words: "
string = gets.chomp
# count = 0
# string.split("").each do |character|
#   count += 1 if character != ' '
# end
count = string.delete(" ").size

puts "There are #{count} characters in #{string}."