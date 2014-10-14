def multiply_lists(lists)
  twostrings = lists.split("|")
  twoarr = []
  onearr = []
  count = 0
  twostrings.each do |num|
    twoarr << num.split(" ")
  end
  if twoarr[0].size != twoarr[1].size
    return "Lists must be same length"
  end
  while count < twoarr[0].size
    onearr << twoarr[0][count].to_i * twoarr[1][count].to_i
    count += 1
  end
  product = onearr.join(" ")
end
