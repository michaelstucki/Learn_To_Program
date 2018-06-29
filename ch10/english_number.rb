# prepend the number with enough zeros to make the number's length a multiple of 3
def pre_number(number)
  pre = {0 => 0, 1 => 2, 2 => 1}
  return '0' * pre[number.length % 3] + number
end

# process the double digits (10 to 99)
def the2(number)
  english = ''
  pre10 = {'10' => 'ten', '11' => 'eleven', '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', 
           '16' => 'sixteen', '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen'}
  pre_other = {'2' => 'twenty', '3' => 'thirty', '4' => 'fourty', '5' => 'fifty', '6' => 'sixty',
               '7' => 'seventy', '8' => 'eighty', '9' => 'ninety'}
  if number[0] == '1'
    english = pre10[number]
  else
    english = pre_other[number[0]] + (number[1] == '0' ? '' : '-')
  end
  return english
end

# process the triple digits
def the3(number)
  english = ''
  digits = {'0' => '', '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five',
            '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine'}
  for i in 0..2
    case i
    when 0 then english += digits[number[i]] + (number[i] == '0' ? '' : ' hundred ')
    when 1 then english += number[i] == '0' ? '' : the2(number[1..2])
    when 2 then english += number[i - 1] == '1' ? '' : digits[number[i]]
    end
  end
  return english
end

# main function
def english_number(number)
  return 'zero' if number == 0
  english = ''
  p_number = pre_number(number.to_s)
  denom = {1 => '', 2 => 'thousand', 3 => 'million', 4 => 'billion', 5 => 'trillion'}
  while p_number != ''
    english += the3(p_number[0..2]) + ' ' + denom[p_number.length / 3] + ' '
    p_number = p_number.length == 3 ? p_number = '' : p_number = p_number[3..-1]
  end
  return english
end

# tests
nums = (0..1000).to_a
temp = ''
(1..10).to_a.each do |num|
  temp += num.to_s
  nums.push(temp.to_i)
end

nums.to_a.each do |num|
  puts num
  puts (english_number(num))
  puts ''
end

