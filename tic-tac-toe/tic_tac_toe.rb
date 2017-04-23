

#tic tac toe
# start
  #create a empty grid 3 * 3 each cells has three  state :  0 x empty
     # cells selected by row and col
  #create two-player

#loop until a player win
  #if  no empty cells exits in the grid  => draw
  #each player select a empty cell
  # test if a row a colone or diagonale is full  : current player win

load  "grid.rb"
load  "cell.rb"
load  "player.rb"




class TicTacToe < Grid

  private_class_method :new
  class << self
    def start
      new
    end
  end

  def initialize
     super()
     @players = ["x","o"].map do |name| Player.new name end
  end

 def play
    i = 0
        draw
        @players.shuffle
        begin
          current =@players[0]

          begin
          row,col = current.play
          end  until valid?(row,col)
        @grid[row][col].method(current.name).call
        draw
        current.win = win?
        @players.rotate!(1)
      end until current.win || full?

    if current.win
         print %Q[ player #{current.name} win]
    else
         print %Q[draw ]

    end
 end

end

 g = TicTacToe.start
 g.play
