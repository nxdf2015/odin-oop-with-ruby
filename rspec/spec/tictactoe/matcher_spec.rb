
require "spec_helper"

def marker(grid,player = :X)
  Matcher.new(grid,player)
end


describe ".Matcher" do
  describe "#win?" do
    context 'grid full ' do


     describe "win? should be true row 2" do

        it ' grid "XOX","OXO","XXX" ' do
            @game = marker(["XOX","OXO","XXX"])
           expect(@game).to be_win
        end

        it  ' grid "XOX","OXO","OOO" ' do
            @game = marker(["XOX","OXO","OOO"],:O)
          expect(@game).to be_win
        end

      end


      describe "win? should be true row 1" do

        it ' grid "XOX","XXX","OXO" ' do
            @game = marker(["XOX","XXX","OXO"])
           expect(@game).to be_win
        end

      end

      describe "win? should be true col 2" do

        it ' grid "XOX","XOX","OXX" ' do
            @game = marker(["XOX","XOX","OXX"])
           expect(@game).to be_win
        end

      end

      describe "win? should be true col 1" do

        it ' grid "XOX","XOX","OXX" ' do
            @game = marker(["XOX","XOO","OOX"],:O)
           expect(@game).to be_win
        end

      end




      describe "win? should be false" do

        it 'grid "XOO","OXO","XOO"' do
            @game = marker(["XOO","OXO","XOO"])
          expect(@game).not_to be_win
        end
      end

    end
  end



  describe "#win? " do
    describe "current_player :X" do
      it 'grid "XOO","OXO","XOO"' do
          @game = marker(["XOO","OXO","XOO"])
         expect(@game).not_to be_win
      end
    end
  end
end
