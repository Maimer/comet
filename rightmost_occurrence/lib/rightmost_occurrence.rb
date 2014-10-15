def rightmost_occurrence(sentence, letter)
  count = 0
  rmost = nil
  while count <= sentence.length
    if sentence.downcase[count] == letter
      rmost = count
    end
    count += 1
  end
  return rmost
end
