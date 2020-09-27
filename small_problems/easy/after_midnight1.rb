# Input is minutes positive or negative before or after midnight.
# Output is time in hh:mm format.

MINUTES_IN_DAY = 1440

def time_of_day(minutes)
  minute_time = minutes % 60
  hour_time = minutes.abs / 60
  hour_time = hour_time % 24
  if minutes < 0
    hour_time = 23 - hour_time
  else
    hour_time = 0 + hour_time
  end
  time = ''
  if hour_time < 10
    time = '0' + hour_time.to_s
  else
    time << hour_time.to_s
  end
  if minute_time < 10
    time += ':0' + minute_time.to_s
  else
    time += ':' + minute_time.to_s
  end
  time
end

def after_midnight(time)
  split_time_array = time.split(':').map { |time_string| time_string.to_i }
  minutes = ((split_time_array[0] * 60 ) + split_time_array[1]) % MINUTES_IN_DAY
  minutes
end

def before_midnight(time)
  split_time_array = time.split(':').map { |time_string| time_string.to_i }
  minutes = (MINUTES_IN_DAY - ((split_time_array[0] * 60 ) + split_time_array[1])) % MINUTES_IN_DAY
  minutes
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

