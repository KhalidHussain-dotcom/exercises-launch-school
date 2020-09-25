def reverse_words(string)
  array = string.split
  array.map do |words|
    if words.length >= 5
      words.reverse!
    else
      words
    end 
  end 
  array.join(" ")
end 



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


# take a string as input, output a string with greater than 5 reversed.
# split string into array, map array with length greater than 5 reversed.
# join array and return it.