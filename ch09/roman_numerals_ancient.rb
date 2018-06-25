def roman_numerals(num)
  roman = ''
  while num > 0
    roman += 'M' * (num / 1000)
    num = num % 1000
    roman += 'D' * (num / 500)
    num = num % 500
    roman += 'C' * (num / 100)
    num = num % 100
    roman += 'L' * (num / 50)
    num = num % 50
    roman += 'X' * (num / 10)
    num = num % 10
    roman += 'V' * (num / 5)
    num = num % 5
    roman += 'I' * num
    num = num % 1
  end
  return roman
end

puts roman_numerals(8888)
