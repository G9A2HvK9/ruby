require 'spec_helper'

describe Bowling_roll do

  let( :roll ){ Bowling_roll.new() }

  it "exists" do
    expect(roll).to be_an_instance_of(Bowling_roll)
  end

  describe "#new" do
    it "has an attribute called score" do
      expect(roll.score).to be(0)
    end
  end

  describe "#record_score" do
    it "can record a score and sets the roll score accordingly" do
      expect{ roll.record_score(5) }.to change{ roll.score }.from(0).to(5)
    end
  end
end
