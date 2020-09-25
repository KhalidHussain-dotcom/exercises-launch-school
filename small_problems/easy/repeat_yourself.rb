def repeat_yourself(statement, times)
  counter = 0
  while counter < times
    puts statement
    counter+= 1
  end 
end 

repeat_yourself('Hello', 3)
