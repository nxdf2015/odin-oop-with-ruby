

class TicTacToe
attr_accessor :current_player
 def initialize(output= STDOUT,grid = nil  ,count = nil,current_player = nil,input = STDIN)
   @grid = Grid.new(output,grid,count,current_player)
   @output = output
   @input = input
   @debug = false
 end




def loop
  @grid.start
  begin
     @grid.play
     row , col = @input.gets.chomp.split(" ")
    break if  @grid.select(row.to_i,col.to_i) || @debug

  end until @grid.end_game?
end



end
