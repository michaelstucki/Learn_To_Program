bottles = 99
while bottles > 0
  if bottles > 1
    puts bottles.to_s + " bottles of beer on the wall!"
    puts bottles.to_s + " bottles of beer!"
    puts "Take one down! Pass it around!"
    bottles -= 1
    if bottles == 1
      puts bottles.to_s + " bottle of beer on the wall!"
    else
      puts bottles.to_s + " bottles of beer on the wall!"
    end
  else
    puts bottles.to_s + " bottle of beer on the wall!"
    puts bottles.to_s + " bottle of beer!"
    puts "Take one down! Pass it around!"
    bottles -= 1
    puts "No more bottles of beer on the wall!"
  end
  puts ""
end
