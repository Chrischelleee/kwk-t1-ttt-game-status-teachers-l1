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

  
