months = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12}
hash = {}

file = File.open("birthdates.txt", "r")
file.each_line do |line|
  arr = line.chomp.split(',')
  name = arr[0].strip
  month_day = arr[1].strip.split(' ')
  month = month_day[0].strip
  day = month_day[1].strip.to_i
  year = arr[2].strip.to_i
  hash[name] = {"year" => year, "month" => month, "day" => day}
end

puts hash

puts "Enter a name"
name = gets.chomp
puts hash[name]

year = hash[name]["year"]
month = hash[name]["month"]
day = hash[name]["day"]

birth_time = Time.local(year, month, day)
puts birth_time

age = Time.new.year - birth_time.year
puts "#{name} => Next birthday: #{month} #{day}, Age: #{age}"

