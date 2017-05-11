class Grid
  attr_accessor :current_player

  def initialize(output = STDOUT ,grid = nil , count = nil , current_player = nil )
    @grid =grid || [%Q[...] , %Q[...],%Q[...]]
    @output = output
    @count_empty_cell = count || 9
    @current_player = current_player || :X
    @draw= Drawing.new(output)
  end

  def valid_cell?(row,col)
     @grid[row][col] == "."
  end



  def start
    draw
  end

  def play
    @draw.draw(@grid)
    @output.puts "player #{@current_player}: select a valid cell"
  end

  def end_game?
    @count_empty_cell == 0
  end

  def win?
       Matcher.new(@grid,@current_player).win?
  end


  def draw
    @draw.draw(@grid)

  end


  def change_cell(row,col)
      @grid[row][col]=@current_player.to_s
      @count_empty_cell-=1
  end

  def select(row,col)

   if valid_cell?(row,col)
      change_cell(row,col)
       draw
      win = false
      if end_game?
        @output.puts "game over"
      elsif  win?
        win = true
        @output.puts "win"
      end
      @current_player = @current_player == :X ? :O : :X
  else
      @output.puts "invalid choice!"
  end
  win
  end
end
