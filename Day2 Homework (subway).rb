# Subway

puts "***MTA***"

subway_system = {
	"n" =>["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th-n"], 
	"l" => ["8th-l", "6th", "Union Square", "3rd", "1st"], 
	"s" => ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"]}


puts "What train do you want to get on: n, l, s?"
entry_train = gets.chomp
case entry_train
	when "n" 
		puts "Which stop: #{subway_system[entry_train]}?"
	when "l" 
		puts "Which stop: #{subway_system[entry_train]}?"
	when "s" 
		puts "Which stop: #{subway_system[entry_train]}?"
	else 
		puts "station doesn't exist!"
end
entry_station = gets.chomp


puts "What train do you want to get off: n, l, s?"
exit_train = gets.chomp
case exit_train
	when "n" 
		puts "Which stop: #{subway_system[exit_train]}?"
	when "l" 
		puts "Which stop: #{subway_system[exit_train]}?"
	when "s" 
		puts "Which stop: #{subway_system[exit_train]}?"
	else 
		puts "station doesn't exist!"
end
exit_station = gets.chomp

intersection = (subway_system[entry_train] & subway_system[exit_train])[0]

if entry_station == exit_station
		number_of_stops = (subway_system[entry_train].index(entry_station)) - (subway_system[exit_train].index(exit_station)).abs
	else
		number_of_stops = (((subway_system[entry_train].index(entry_station)) - (subway_system[entry_train].index(intersection))).abs + 
							((subway_system[exit_train].index(exit_station)) - (subway_system[exit_train].index(intersection))).abs)
end


puts "Your trip length is #{number_of_stops} stops."
