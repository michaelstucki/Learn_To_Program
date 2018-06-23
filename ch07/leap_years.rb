puts "Enter starting year"
start_year = gets.chomp.to_i

puts "Enter ending year"
end_year = gets.chomp.to_i

puts "Leap years between #{start_year} and #{end_year}:"
while start_year <= end_year

  if (start_year % 400 == 0 && start_year % 100 == 0) || (start_year % 4 == 0)
    puts start_year
  end

  start_year += 1
end
