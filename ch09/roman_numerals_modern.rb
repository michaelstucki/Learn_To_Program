def roman_numerals(num)
  roman = ''
  while num > 0
    roman += 'M' * (num / 1000)
    num = num % 1000
    roman += 'CM' * (num / 900)
    num = num % 900
    roman += 'D' * (num / 500)
    num = num % 500
    roman += 'CD' * (num / 400)
    num = num % 400
    roman += 'C' * (num / 100)
    num = num % 100
    roman += 'XC' * (num / 90)
    num = num % 90
    roman += 'L' * (num / 50)
    num = num % 50
    roman += 'XL' * (num / 40)
    num = num % 40
    roman += 'X' * (num / 10)
    num = num % 10
    roman += 'IX' * (num / 9)
    num = num % 9
    roman += 'V' * (num / 5)
    num = num % 5
    roman += 'IV' * (num / 4)
    num = num % 4
    roman += 'I' * num
    num = num % 1
  end
  return roman
end

(1..2000).to_a.each { |num| puts roman_numerals(num) }

