



# describe "#win?" do
#
#   let(:output){double("output")}
#
#   context "grid full test diagonal " do
#       it 'grid "XOX","OXO","OOX"' do
#         @game = TicTacToe.new(output,["XOX","OXO","OOX"])
#         expect(@game.win?).to be true
#       end
#
#       it ' grid "OOX","OXO","XOO"' do
#         @game = TicTacToe.new(output,["OOX","OXO","XOO"])
#         expect(@game.win?).to be true
#       end
#
#     context "player O " do
#       it 'grid "OXX","XOO","OXO"' do
#         @game = TicTacToe.new(output,["OXX","XOO","OXO"],0,:O)
#         expect(@game.current_player).to eq(:O)
#       end
#
#        it 'grid "OXX","XOO","OXO"' do
#           @game = TicTacToe.new(output,["OXX","XOO","OXO"],0,:O)
#           expect(@game.win?).to be true
#         end
#     end
#      end
#
#
#
# end
#
#
#
# describe "#win?" do
#   context 'grid full ' do
#
#     let(:output){double("output")}
#    describe "win? should be true row 2" do
#
#       it ' grid "XOX","OXO","XXX" ' do
#           @game = TicTacToe.new(output,["XOX","OXO","XXX"],0)
#          expect(@game.win?).to be true
#       end
#
#       it  ' grid "XOX","OXO","OOO" ' do
#           @game = TicTacToe.new(output,["XOX","OXO","OOO"],0,:O)
#           expect(@game.win?).to be true
#       end
#
#     end
#
#
#     describe "win? should be true row 1" do
#
#       it ' grid "XOX","XXX","OXO" ' do
#           @game = TicTacToe.new(output,["XOX","XXX","OXO"],0)
#          expect(@game.win?).to be true
#       end
#
#     end
#
#     describe "win? should be true col 2" do
#
#       it ' grid "XOX","XOX","OXX" ' do
#           @game = TicTacToe.new(output,["XOX","XOX","OXX"],0)
#          expect(@game.win?).to be true
#       end
#
#     end
#
#     describe "win? should be true col 1" do
#
#       it ' grid "XOX","XOX","OXX" ' do
#           @game = TicTacToe.new(output,["XOX","XOO","OOX"],0,:O)
#          expect(@game.win?).to be true
#       end
#
#     end
#
#
#
#
#     describe "win? should be false" do
#
#       it 'grid "XOO","OXO","XOO"' do
#           @game = TicTacToe.new(output,["XOO","OXO","XOO"],0)
#          expect(@game.win?).to be false
#       end
#     end
#
#   end
# end
#
#
#
# describe "#win? " do
#   describe "current_player :X" do
#     it 'grid "XOO","OXO","XOO"' do
#         @game = TicTacToe.new(output,["XOO","OXO","XOO"],0,:X)
#        expect(@game.win?).to be false
#     end
#   end
# end
