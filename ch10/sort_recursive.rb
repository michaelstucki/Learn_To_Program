def sort_array(unsorted)
  sort_recursive(unsorted,[])
end

def sort_recursive(unsorted, sorted)
  return sorted if unsorted.length == 0
  min_item = unsorted[0]
  unsorted.each { |item| min_item = item if item < min_item }
  sorted.push(min_item)
  unsorted.delete_at(unsorted.index(min_item))
  sort_recursive(unsorted, sorted)
end

puts sort_array(['V', 'D', 'E', 'R'])

