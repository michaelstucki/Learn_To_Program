puts "Enter your birthday details"

puts "What year?"
year = gets.chomp.to_i

puts "What month [as integer]?"
month = gets.chomp.to_i

puts "What day of the month?"
day = gets.chomp.to_i

dob = Time.local(year, month, day)
puts "Your date of birth: #{dob}"

current_time = Time.new

age = current_time.year - dob.year
puts "Congratulations! You are #{age} years old!"

puts "Now for your spankings!"

(1..age).to_a.each {|n| puts "SPANK #{n}!"}

