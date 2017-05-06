require "spec_helper"

describe "#loop" do
  let(:input){double("input")}
  let(:output){double("output").as_null_object}
  let(:game){TicTacToe.new(output,nil,nil,nil,input)}

  context "player select one cell " do
   it "player  X select cell 0,0" do
    input.stub(:gets).and_return("0 0")
    output.should_receive(:puts).with("\n-------\n|X|.|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
    game.loop #debug = true 
  end

  it "player O select cell 0 1" do

    input.stub(:gets).and_return("0 1")
    output.should_receive(:puts).with("\n-------\n|.|X|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
    game.loop # debug = true

  end
  end


end
