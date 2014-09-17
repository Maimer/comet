def leap_year?(year)
  # YOUR CODE HERE
  if (year % 400 == 0) || ((year % 4 == 0) && !(year % 100 == 0))
    true
  else
    false
  end
end
