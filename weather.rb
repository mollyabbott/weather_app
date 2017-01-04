require 'barometer'

puts "Please enter your Zip Code:"
location = gets

barometer = Barometer.new(location)
weather = barometer.measure

puts "Temperature is #{weather.current.temperature.f}"
puts "Dew Point #{weather.current.dew_point.f}"
puts "Heat Index #{weather.current.heat_index}"
puts "Wind Chill #{weather.current.wind_chill}"
puts "Pressure #{weather.current.pressure}"
puts "Visibility #{weather.current.visibility}"
puts "Wind #{weather.current.wind}"
puts "Humidity #{weather.current.humidity}"
puts "Sun #{weather.current.sun}"
puts "Condition #{weather.current.condition}"
#puts weather.current.methods

if weather.current.condition.include?"sun"
	puts "It's #{weather.current.temperature.f} degrees and  sunny!"
	elsif weather.current.condition.include?"cloud"
		puts "It's #{weather.current.temperature.f} degrees and crazy cloudy!"
	elsif weather.current.condition.include?"rain"
		puts "It's #{weather.current.temperature.f} degrees and crazy rainy!"
	elsif weather.current.condition.include?"snow"
		puts "It's #{weather.current.temperature.f} degrees and super snowy!"
	else
		nil
end

puts "It's #{weather.current.temperature.f} degrees and #{weather.current.condition}!"



