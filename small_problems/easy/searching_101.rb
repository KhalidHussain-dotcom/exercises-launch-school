def retrieve_input(user_choices)
  6.times do |iteration|
    puts "Enter the #{iteration + 1} number: "
    user_choices[iteration] = gets.chomp.to_i
  end
end

user_choices = []
retrieve_input(user_choices)
last_number = user_choices.pop
if user_choices.include?(last_number)
  puts "The number #{last_number} appears in #{user_choices}."
else
  puts "The number #{last_number} does not appear in #{user_choices}."
end
