def sort_list(list)
  list = list.split
  first, second = 0, 1
  while first < (list.length - 1)
    while second < list.length
      if list[first].to_f > list[second].to_f
        list[first], list[second] = list[second], list[first]
      end
      second += 1
    end
    first += 1
    second = first + 1
  end
  list = list.join(" ")
end
