class Player
  attr_accessor  :name ,:win

  def initialize(name)
    @name = name
    @win = false

  end

  def play
    puts " \n >> player #{@name} : select a empty  cell"
    gets.split(" ").map do |value| value.to_i end
  end

end
