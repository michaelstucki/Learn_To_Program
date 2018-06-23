words = []
while true
  puts "Type a word and hit 'enter' to add a word or just hit 'enter' to stop"
  word = gets.chomp
  if word == ''
    break
  else
    words.push(word)
  end
end

puts words.sort
