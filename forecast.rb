
require 'barometer'
 
def get_location(location)
  Barometer.new(location).measure
end

puts "Please enter your zipcode:"
location = gets

weather = get_location(location)
tomorrow = Time.now.strftime('%d').to_i + 1
 
weather.forecast.each do |forecast|
	day = forecast.starts_at.day

	if day == tomorrow
		day_name = "Tomorrow"
	else 
		day_name = forecast.starts_at.strftime('%a')
	end

 puts day_name + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.f.to_s + ' and a high of ' + forecast.high.f.to_s

end
