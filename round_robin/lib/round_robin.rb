def schedule_tournament(names)
  if names.size % 2 != 0
    names << "Bye"
  end
  matches = []
  round, match = 0, 1
  player1 = 0
  player2 = names.size - 1
  while round < names.size - 1
    matches << []
    while match <= names.size / 2
      matches[round] << [names[player1], names[player2]]
      matches[round][match - 1].delete_if { |x| x == "Bye" }
      player1 += 1
      player2 -= 1
      match += 1
    end
    names.insert(1, names.pop)
    player1 = 0
    player2 = names.size - 1
    round += 1
    match = 1
  end
  return matches
end
