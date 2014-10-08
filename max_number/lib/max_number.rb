def max_number(numbers)
  max = numbers[0]
  numbers.each do |num|
    if num > max
      max = num
    end
  end
  max
end
