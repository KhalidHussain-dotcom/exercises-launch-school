def count_occurrences(vehicles)
  unique = vehicles.uniq
  vehicle_hash = {}
  unique.each do |unique_vehicle|
    counter = 0
    vehicles.each do |all_vehicles|
      counter +=1 if unique_vehicle == all_vehicles
    end 
    vehicle_hash[unique_vehicle.to_sym] = counter
  end 
  vehicle_hash.each { |key, value| puts "#{key} => #{value}" }
end 




vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)


# input = array, output = hash
# make a unique array
# compare each element from array to vehicles, and add to counter
# add uniq element and counter to hash
# print hash