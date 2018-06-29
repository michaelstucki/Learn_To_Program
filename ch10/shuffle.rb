def shuffle(array)
  shuffled = []
  while array.length > 0
    rand_index = rand(0...array.length)
    shuffled.push(array[rand_index])
    array.delete_at(rand_index)
  end
  return shuffled
end

array = ('A'..'Z').to_a
puts shuffle(array.sort)

