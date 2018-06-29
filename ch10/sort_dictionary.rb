def sort_array(unsorted)
  sorted = []
  while unsorted.length > 0
    min_item = unsorted[0]
    unsorted.each { |item| min_item = item if item.downcase < min_item.downcase } 
    sorted.push(min_item)
    unsorted.delete_at(unsorted.index(min_item))
  end
  return sorted
end

unsorted = ['B','a','D','b']
puts sort_array(unsorted)

