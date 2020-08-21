require 'pry' 

class TicTacToe

  def initialize(board=nil)
    @board = board || Array.new(9, " ")
  end 
  
  WIN_COMBINATIONS = [
    [0,1,2], #Top row
    [3,4,5], #Middle row
    [6,7,8], #Bottom row
    [0,3,6], #Left column
    [1,4,7], #Middle column
    [2,5,8], #Right column
    [0,4,8], #Left diagonal
    [2,4,6], #Right diagonal 
    ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i-1 
  end 
  
  def move(index, token="X")
    @board[index] = token
  end 
  
  def position_taken?(i)
    if @board[i] == "X" or @board[i] == "O"
      true
    else
      false
    end 
  end 
    
  def valid_move?(i)
    (i).between?(0,8) && !self.position_taken?(i) 
  end
  
  def turn(input)
    puts "Where would you like to play?"
    input = gets.chomp
    index = self.input_to_index(input)
    if valid_move?(index) == true 
      move(index, current_player)
      display_board
    else
      until valid_move?(index) do
        puts "Sorry, that's an invalid move; Try again."
        input = gets.chomp
        index = self.input_to_index(input)
      end 
      move(valid?, current_player)
      display_board
    end 
  end
  
  def turn_count
    @board.count {|spot| spot != " "}
  end 
  
  def current_player
    while @board.turn_count > 0 
    
    
    else "O"
    end
  end 
end 
end 