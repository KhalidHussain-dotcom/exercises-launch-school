def xor?(condition1, condition2)
  (condition1 == true && condition2 == false) ||
  (condition1 == false && condition2 == true)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false