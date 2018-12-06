require 'pry'
class Board
  @@all = []
  attr_accessor :cells
  
  def initialize
    @cells =  Array.new(9, " ")
    
  end
  
  def reset!
    @cells.clear
    @cells = Array.new(9, " ")
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(input)
    @cells[input.to_i-1]
    #binding.pry
  end
  
  def full?
    @cells.all? {|space| space != " " }
  end
  
  def turn_count
    @cells.select.count {|element| element == "X" || element == "O"}
  end
  
  def taken?(space)
    position(space) != " "
  end
  
  def valid_move?(input)
    input >= "1" && input <= "9"
      
    #else
    # position(input) && taken?(input)
    # end
    
    
  end
end
    
  
#     # taken?(input)
#     # binding.pry
    
   
#       # binding.pry
#       # index.between?(0, 8) && !position_taken?(board, index)
#       # position_taken?(board, index)
#   # board[index] != " "

#   end
  
# end

# # def position_taken?(board, index)
# #   if board[index] == "X" || board[index] == "O"
# #     true
# #   else
# #     false
# #   end
# # end
# # end

