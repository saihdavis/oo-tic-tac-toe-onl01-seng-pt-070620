require "pry"
class TicTacToe
  
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [2,5,8], [0,4,8], [1,4,7], [2,4,6]]
  
  def initialize(board = nil)
    @board = board || Array.new(9," ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

 def input_to_index(user_input)
   user_input.to_i - 1
  end
  
  def move(index, player_token)
    @board[index] = player_token
  end
  
  def position_taken?(location)
    #binding.pry
    @board[location] == "X" || @board[location] == "O"
  end    
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end

  def turn_count 
    position_taken?(1,9)
  
  end


end
