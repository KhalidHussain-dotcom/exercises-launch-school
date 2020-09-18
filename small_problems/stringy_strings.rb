def stringy(number, order = 1)
  string = ""
  while string.size < number do
    string += order.even? ? '0' : '1'
    if string.size < number
      string += order.even? ? '1' : '0'
    end 
  end
  string
end 

    


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#input is integer, output is string.
# adds to string for each integer, then prints string
# added additional functionality to reverse order of 0's and 1's based on paramater.