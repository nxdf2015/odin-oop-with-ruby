class Drawing
  def initialize(output)
    @output = output
  end

  def draw(grid)
   @output.puts  "\n-------\n" + grid.map {|row| "|"+ row.split("").join("|")+"|" }.join("\n-------\n") +"\n-------\n"
  end

end
