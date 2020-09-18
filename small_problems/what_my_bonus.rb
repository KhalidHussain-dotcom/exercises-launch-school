def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end 


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# input is boolean and integer. output is bonus amount, integer.
#Determine if bonus is active, if not output 0, otherwise take salary divide by 2 and return it.
#Use a ternary operator