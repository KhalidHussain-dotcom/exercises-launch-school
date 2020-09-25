#input is length and width of room in meters
#output is area of room in square meters and square feet.

def retrieve_size(message)
  print(message)
  gets.chomp.to_f
end

def display_area_of_room(area_feet, area_inches, area_centimeters)
  puts("The area of the room is #{area_feet} square feet " + \
       "(#{area_inches} square inches, #{area_centimeters} square centimeters)")
end

length = retrieve_size("What is the length in feet? ")
width = retrieve_size("What is the width in feet? ")
area_feet = length * width
area_inches = (length * width * 12).round(2)
area_centimeters = (length * width * 12 * 2.54).round(2)
display_area_of_room(area_feet, area_inches, area_centimeters)
