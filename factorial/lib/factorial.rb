def factorial(number)
  total = 1
  if number > 1
    total = number * factorial(number - 1)
  else
    total
  end
end
