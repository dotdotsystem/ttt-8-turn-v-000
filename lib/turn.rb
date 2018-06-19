board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board = [ " ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(input = [ "1", "2", "3", "4", "5", "6", "7", "8", "9"])
    input.to_i - 1
end

def move(board, input, index = "X")
  board[input] = index
end

def position_taken?(board, index) 
  if board[index] == " " || board[index] == "" || board[index] == nil 
      return false
  elsif board[index] == "X" || board[index] == "O"
      return true
  end
end

def valid_move?(board, index)
  if (index.between?(0,8)) && !(position_taken?(board, index))
      return true
  else
      return false 
  end 
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index, board) 
    return move(board, input, index = "X")
  else 
    turn(board)
  end
end
 

  
  