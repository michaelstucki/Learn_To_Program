bottles = 99
while bottles > 0
  puts "#{bottles} #{bottles  == 1 ? "bottle" : "bottles"} of beer on the wall!" 
  puts "#{bottles} #{bottles  == 1 ? "bottle" : "bottles"} of beer!" 
  puts "Take one down! Pass it around!"
  bottles -= 1
  if bottles == 0
    puts "No more bottles of beer on the wall!"
  else
    puts "#{bottles} #{bottles  == 1 ? "bottle" : "bottles"} of beer on the wall!" 
  end
  puts ''
end
