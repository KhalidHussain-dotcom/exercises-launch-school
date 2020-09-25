def retrieve_name(name="Teddy")
  print("What is your name? ")
  answer = gets.chomp
  if answer == ''
    name
  else
    name = answer
  end
end


name = retrieve_name
puts "#{name} is #{rand(20..200)} years old!"