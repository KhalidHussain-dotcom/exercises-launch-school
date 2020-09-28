ALPHABET = ('a'..'z').to_a

def word_sizes(string)
  hash_count = {}
  new_string = string.split(' ').map do |word|
    word.each_char do |char|
      word.delete!(char) unless ALPHABET.include?(char.downcase)
    end
  end
  p new_string
  new_string.each do |word|
    if hash_count[word.size] == nil
      hash_count[word.size] = 1
    else
      hash_count[word.size] += 1
    end
  end
  hash_count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
