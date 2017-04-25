

class Color
  class << self
    def select(color,c = "")
        "\033[30;#{40 +  color  }m #{c} \033[0m"
    end
  end
end



module Format


    def convert_Color(color)
      colors = {  R: 1,  G: 2 ,  Y: 3,  B: 4, P: 5 , C: 6}
      color.split("").map do |c| colors[c.upcase.to_sym] || "+++++++" end.join("")
    end


    def print(type, * msg )
      case type

        when "start"
          c = %Q[R G Y B P C]
          puts (1..6).map {|i|   Color.select(5,"o")}.join("").center(40)
        when "color"
          puts %{
            R : red  , Y : yellow , B : blue
            G : green, P : purple, C : Cyan
          }
        when "invalid"
           puts %Q[ guess #{msg[0]} secret #{msg[1]} \n invalid guess]
        when "match"

           puts %Q[ valid : + , present : - , invalid . ]
           puts msg[0].map {|i|
             if i == -1
               Color.select(5,".")
            elsif i == 0
             Color.select(5,"-")
           else
             Color.select(i)
           end }.join("").center(40)
        when "end"
          if msg[0]
            puts "WIN end game ".center(15)
          else
            puts "GAME OVER".center(15)
          end

      end
    end
 end
