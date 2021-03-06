# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top rows
  [3,4,5], #middle rows
  [6,7,8], #bottom rows
  [0,3,6], #left columns
  [1,4,7], #middle columns
  [2,5,8], #right columns
  [2,4,6], #starting from the right
  [0,4,8] #starting from the left
  ]
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]


if position_1 == "X" && position_2 == "X" && position_3 == "X"
return win_combination
break
end
if position_1 == "O" && position_2 == "O" && position_3 == "O"
return win_combination
break
end
  end
  return false
end

def full?(board)
board.each do |token|
  if token == " " || token == ""
    return false
    break
  end
end
  return true
end

def draw?(board)
  if won?(board)
    return false
  else full?(board)
    return true
  end
end

def over?(board)
  if full?(board)
    return true
  elsif won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    winning_token = won?(board)
    winner = board[winning_token[0]]
    return winner
  end
end
