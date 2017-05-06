require "spec_helper"


describe ".Grid" do
  context ' grid ["XOX","OXO","XXX"]' do
    let(:output){double("output").as_null_object}
    let(:grid){Grid.new(output,["XOX","OXO","XXX"])}

      context "#valid_cell?" do
          it "X make invalid choice" do

            expect(grid.valid_cell?(0,0)).to be false
          end

          it "current_player should X" do
            grid.change_cell(0,0)
            expect(grid.current_player).to eq(:X)
          end
      end

      context "#select" do
        it "should receive invalid choice" do
          output.should_receive(:puts).with("invalid choice!")
          grid.select(0,0)
        end

        it "current player should be X" do
            expect(grid.current_player).to eq(:X)
        end

      end
  end
end
