def century(year)
  century_string = ''
  unless year % 100 == 0
    century_string << ((year / 100) + 1).to_s
  else
    century_string << (year / 100).to_s
  end
  if [11,12,13].include?(century_string.to_i % 100)
    century_string << 'th'
    return century_string
  end
  case century_string.to_i % 10
  when 1
    century_string << 'st'
  when 2
    century_string << 'nd'
  when 3
    century_string << 'rd'
  when (4..9)
    century_string << 'th'
  when 0
    century_string << 'th'
  end
  century_string
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'