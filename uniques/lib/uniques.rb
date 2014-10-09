def uniques(list)
  newlist = []
  list = list.split(",")
  list.each do |num|
    if !newlist.include?(num)
      newlist << num
    end
  end
  newlist = newlist.join(",")
end
