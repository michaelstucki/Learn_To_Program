puts "Say something to granny!"
blurb = gets.chomp
prevBlurb = blurb
byes = 0

while true
  if blurb == blurb.upcase
    puts "NO, NOT SINCE " + rand(1930..1951).to_s + "!"
  else
   puts "HUH?! SPEAK UP, SONNY!"
  end
 
  if blurb == "BYE" && prevBlurb == "BYE"
    byes += 1
    break if byes == 3
  else
    byes = 0
  end
  
  puts "Say something to granny!"
  blurb = gets.chomp
  prevBlurb = blurb
end

puts "ALRIGHT! GO ON AND GET OUT OF HERE THEN!"
