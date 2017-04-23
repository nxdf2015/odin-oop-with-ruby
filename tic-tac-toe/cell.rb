class Cell
  attr_reader :state

  class << self
    def create
      Cell.new
    end
  end

  def initialize
     @state = :e
  end
  def x
    @state = :x
  end

  def empty?
    @state == :e
  end

  def o
    @state = :o
  end
  def to_s
   s =  @state == :e ? "" : @state.to_s
   s.center(3)
  end

   

end
