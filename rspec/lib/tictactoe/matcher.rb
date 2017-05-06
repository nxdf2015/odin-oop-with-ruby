class Matcher

  def initialize(grid , current_player = :X )
    @current_player = current_player
    @grid = grid
  end

  def row_win?
    row = @current_player.to_s * 3
    (@grid.include? row  )
  end

  def col(i)
    @grid[0][i]+@grid[1][i]+@grid[2][i]
  end

  def col_win?
    row  =@current_player.to_s * 3
    (0..2).inject(false) do |c,i| c || col(i) == row end
  end

  def pattern
    @current_player.to_s * 3
  end

  def diag_win?

     (@grid[0][0]+@grid[1][1]+@grid[2][2] == pattern ) || (@grid[0][2]+@grid[1][1]+@grid[2][0] ==pattern)
  end

  def win?
    row_win?  || col_win? ||diag_win?
  end

end
