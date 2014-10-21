def hex_to_decimal(hex)
  digits = hex.upcase.split('')
  decimal = 0
  count = digits.size - 1
  digits.each do |num|
    if num == "A"
      num = 10
    elsif num == "B"
      num = 11
    elsif num == "C"
      num = 12
    elsif num == "D"
      num = 13
    elsif num == "E"
      num = 14
    elsif num == "F"
      num = 15
    end
    decimal += num.to_i * 16**count
    count -= 1
  end
  decimal
end
