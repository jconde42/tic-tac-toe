require_relative './spec_helper'

describe "interface" do

  describe "#input" do
    context "valid string input" do
      it "returns an array with cordinates" do
        expect(input("12,54")).to eq [11,53]
        expect(input("1,3")).to eq [0,2]
      end
    end 

    context "invalid input" do
      it "asks to retry" do
        #it does this
      end
    end
  end

end
