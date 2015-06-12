require_relative './spec_helper'

describe Board do

  board = Board.new

  before :each do
    board.reset
  end

  describe "#initialize" do
    it "sets up empty array" do
    end
  end

  describe "#reset" do
    it "array to nil" do
      board.reset
      expect(board.grid).to eql([[" "," "," "],[" "," "," "],[" "," "," "]])
    end
  end

  describe "#edit" do
    context "valid pos" do
      it "return true" do
        player = Player.new("X")
        expect(board.edit(0,0,player)).to eq(true)
        piece = "O"
        expect(board.edit(1,2,player)).to eq(true)
      end
    end

    context "invalide pos" do
      it "returns false" do
        grid = board.grid
        grid[0][0] = "X"
        grid[1][2] = "O"
        player = Player.new("X")

        expect(board.edit(0,0,player)).to eq(false)
        expect(board.edit(1,2,player)).to eq(false)
      end
    end

  end

  describe "#display" do
    it "displays the grid" do
    end
  end

end
