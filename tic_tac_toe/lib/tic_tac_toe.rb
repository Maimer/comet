def winner?(board)
  board.each do |row|
    if row[0] != " " && row[0] == row[1] && row[1] == row[2]
      return true
    end
  end
  column = 0
  while column < board.size
    if board[0][column] != " " && board[0][column] == board[1][column] && board[1][column] == board[2][column]
      return true
    end
    column += 1
  end
  if board[1][1] != " " && (board[0][0] == board[1][1] && board[1][1] == board[2][2]) || (board[0][2] == board[1][1] && board[1][1] == board[2][0])
    return true
  end
  return false
end

