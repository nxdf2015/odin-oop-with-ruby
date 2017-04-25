load("code.rb")
load("format.rb")
load("helper.rb")

class Player
include Format
attr_accessor :win

  def initialize
    @count = 0
    @win = false
  end

  def try
     @count = @count.next
  end

  def count
    @count
  end



  def to_s
  %Q[ @count #{@count }]
  end

 end


class Human < Player

 def initialize
   super
   @code = Code.create
 end


 def init_game
   @code.init_feedback
 end

 def guess
   begin
     print("color")
     print " enter colors  : try #{@count}   \n"
     print "".center(5)
     guess = convert_Color(gets.chomp)
  end  until @code.valid? guess
 try
 guess
 end

 def match guess
   @win = @code.win?(guess)
   @code.match (guess)
 end


 def to_s
 %Q[ @count #{count }]
 end
end


class Computer < Player

  def initialize
    super()
    @choices = Hash.new
    @feedback =""
      @choices[:invalid] = []
  end
  def init_game

  puts  %{ write
               win
               + for valid
               - for present but not at the correct position
               . for invalid
             } +
     "game start, computer play........\n"
  end

  def guess
      if @count  == 0
        @guess =(1..6).to_a.shuffle
      else
        h = Hash.new
        @feedback.split("").each_index do |i|
          case @feedback[i]
            when "+"
              @choices[:valid] ||= []
              @choices[:valid] << i
            when "-"
            h[i] ||= []
            h[i] << @guess[i]
            else

              @choices[:invalid] << @guess[i].to_i
            end
        end
        @choices[:include] = h

        values_include = h.invert

        index_valid = (1...6).to_a - @choices[:valid]
        new_guess =[-1] * 6
        for value in values_include.keys
            number  = values_include[value].length
            for  index in  (index_valid - values_include[value]).sample(number)
              new_guess[index] = value
            end
        end
        new_guess.flatten!

        for index in @choices[:valid]
          new_guess[index]= @guess[index]
        end
        remain = new_guess.count(-1)
          #p %W[ new_guess #{new_guess} remain #{remain}]
        if remain > 0
          index = []
           new_guess.each_index do |i| index << i if new_guess[i] == -1 end
          for i in index
            begin
              n = rand(5) + 1
            end while @choices[:invalid].include? n
            new_guess[i] = n
          end
        end

       @guess = new_guess

  end
  try

  print("match",@guess)
  @guess
  end

  def match (arg = "" )
    @feedback = gets.chomp
    @win = ( @feedback == "win" )

  end

end



#
# computer = Computer.new
# computer.guess
