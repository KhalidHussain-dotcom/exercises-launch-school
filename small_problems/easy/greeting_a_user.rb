print "What is your name? "
name = gets.chomp
if name[name.length - 1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?!"
else
  puts "Hello #{name}."
end
