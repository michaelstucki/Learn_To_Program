# converts roman number to an array of integers
def integer_array(number)
  number_array = number.reverse.chars.to_a
  integer_array = []
  while number_array.length > 0
    case number_array.pop
      when 'm' then integer_array.push(1000)
      when 'd' then integer_array.push(500)
      when 'c'
        if number_array.length > 0 && number_array[-1] == 'm'
          integer_array.push(900)
          number_array.pop
        elsif number_array.length > 0 && number_array[-1] == 'd'
          integer_array.push(400)
          number_array.pop
        else
          integer_array.push(100)
        end
      when 'l' then integer_array.push(50)
      when 'x'
        if number_array.length > 0 && number_array[-1] == 'c'
          integer_array.push(90)
          number_array.pop
        elsif number_array.length > 0 && number_array[-1] == 'l'
          integer_array.push(40)
          number_array.pop
        else
          integer_array.push(10)
        end
      when 'v' then integer_array.push(5)
      when 'i'
        if number_array.length > 0 && number_array[-1] == 'x'
          integer_array.push(9)
          number_array.pop
        elsif number_array.length > 0 && number_array[-1] == 'v'
          integer_array.push(4)
          number_array.pop
        else
          integer_array.push(1)
        end
    end
  end
  return integer_array
end

# returns false if invalid, true if valid
def validator(integer_array)
  # none of these can occur more than once
  [4, 40, 400, 9, 90, 900].each {|n| return false if integer_array.count(n) > 1}

  # no key can be followed by its value
  {4 => 1, 40 => 10, 400 => 100}.each do |x, y|
      next if integer_array.index(x) == nil || integer_array.index(y) == nil
      return false if integer_array.index(x) < integer_array.index(y)
  end

  # integers must be in descending order
  return integer_array == integer_array.sort.reverse
end

def is_roman?(number)
  number.chars.to_a.each {|n| return false if !['m', 'd', 'c', 'l', 'x', 'v', 'i'].include?(n)}
  true
end

# main
def roman_to_integer(number)
  number = number.downcase
  return nil if !is_roman?(number)
  integer_array= integer_array(number)
  return validator(integer_array) ? (integer_array.reduce :+) : nil
end

# tests
numbers = ['bbsbmccxx', 'mccxxivii', 'mccxxvii']
numbers.each do |num|
  # check if roman
  puts "#{num} => #{is_roman?(num)}"

  # convert to array of integers
  ia = integer_array(num)
  puts "#{num} => #{ia}"

  # check validity
  v = validator(ia)
  puts "#{num} => #{v ? "valid" : "invalid"}"

  # get integer equivalent
  puts "#{num} => #{roman_to_integer(num)}"
  puts
end

