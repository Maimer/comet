def armstrong_number?(number)
  digits = []
  total = 0
  armstrong = number
  if number < 10
    return true
  end
  while number > 0
    digits << number % 10
    number /= 10
  end
  digits.each do |num|
    total += num**digits.size
  end
  if armstrong == total
    return true
  end
  false
end
