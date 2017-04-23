class Grid
 attr_accessor :grid

  def initialize(col = 3 , row =3 )
      cell =  Cell.create
      @grid = (0...row).map {(0...col).map do cell.clone  end}
  end

  def valid?(row,col)
    @grid[row][col].empty?
  end

  def full?
    @grid.all? {|line| line_full?(line)}

  end

  def line_full?(line)
    line.count do |cell| cell.state ==  :e   end == 0
  end

  def  line_win?(line)
    count_cell =  line.count do |cell| cell.state ==  :o   end
    line_full?(line) && ( count_cell == @grid.length || count_cell == 0)
  end

  def cols
     size = @grid.length
     @grid.inject([[],[],[]]) {|acc,row|
      size.times{|i|  acc[i] << row[i]  }
     acc }
  end

  def diag
    col = @grid.length
    a = (0...col).to_a.map do |x|   @grid[x][x] end
    b = (0...col).to_a.map do |x| @grid[col -1 - x][ x] end
    [a,b]
  end

  def win?

    [@grid,cols(),diag()].flatten(1).any? {|item| line_win?(item)}
  end


  def draw
   print   @grid.inject("\n"){ |acc,row| acc  +separators() +"\n" +  row.join("|")+"\n"} + separators
  end

 private
  def separators
    "-" *(3 * @grid[0].length + 2)
  end
end
