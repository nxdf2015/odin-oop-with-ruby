

require "spec_helper"

describe "start game" do
  let(:output) {double("output").as_null_object}
  let(:game){Grid.new(output)}
  context "start game" do
  it "grid when start game" do
       output.should_receive(:puts).with("\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
      game.start
    end



end




  context "player X select a cell" do

  let(:ouput){double("ouput").as_null_object}
  let(:game){Grid.new(output)}

    it "ask player to select a cell" do
      output.should_receive(:puts).with("player X: select a valid cell")

      game.play
    end

    it "player select cell 0,0" do

      output.should_receive(:puts).with("\n-------\n|X|.|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
      game.select(0,0)
    end

    it "player select cell 0,1" do
      output.should_receive(:puts).with("\n-------\n|.|X|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
      game.select(0,1)
    end
  end



  context "player X play " do
    let(:ouput){double("ouput").as_null_object}
    let(:game){Grid.new(output)}

    it "player change" do
      game.select(0,0)
      output.should_receive(:puts).with("player O: select a valid cell")
      game.play
    end
  end



end



describe "#select" do
  context "player can't win" do
     let(:grid){["XOX","OXO","XX."]}
     let(:output){double("output").as_null_object}
     let(:game){Grid.new(output,grid)}

    it "player :X select cell 2,2" do

      output.should_receive(:puts).with("win")
       game.select(2,2)
    end

    it "player :X select cell 2,2" do
      expect(game.current_player).to eq(:X)
    end

    it "player select cell 1,1" do
      output.should_receive(:puts).with("invalid choice!")
      game.select(1,1)
    end
  end

  context "player can't win" do
     let(:grid){["XOX","OXO","XX."]}
     let(:output){double("output").as_null_object}
     let(:game){Grid.new(output,grid,1)}

     it "player O play"do
       output.should_receive(:puts).with("game over")
       game.select(2,2)

     end
  end



end
