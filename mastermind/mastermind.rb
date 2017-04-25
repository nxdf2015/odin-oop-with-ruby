# start with a secret code : random number
#initialize max try to 12
#loop until secret code find or number try < max
  #ask user a number
  #if digit at the rigth position  secret code  : +
  #if digit is not at the right place : -

load("helper.rb")
load("player.rb")
load("code.rb")
load("format.rb")




class Game
  include Format
  MAX = 12
  class << self
     def create
      begin
       puts "init game - what kind of game ? "
       puts "1 human guess and computer generate secret "
       puts "2 computer guess and human generate secret "
       puts "3 exit"
       choice = gets.chomp.to_i
     end until [1,2,3].include?(choice)

      case choice
      when 1
        player = Human.new
      when 2
        player = Computer.new
      when 3
        exit  
      end

       new(player)
     end
   end

   def initialize(player)

     @player = player
  end

   def start
    guess = 0
    # puts @player.init_game
    print("start",@player.init_game)
    begin
      guess = @player.guess

      @player.match guess

    end while @player.count < MAX && !@player.win

    print("end",@player.win)

 end
end


game = Game.create
game.start
