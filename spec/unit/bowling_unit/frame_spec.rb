require 'spec_helper' #requires spec_helper file

describe Bowling_frame do

  let( :frame ){ Bowling_frame.new(1, Bowling_roll.new()) }

  it "exists" do
    expect(frame).to be_an_instance_of(Bowling_frame)
  end

  describe "#new" do
    it "instantiates with 3 frames which are all instances of the roll class" do
      expect( frame.rollA ).to be_an_instance_of( Bowling_roll )
      expect( frame.rollB ).to be_an_instance_of( Bowling_roll )
      expect( frame.rollC ).to be_an_instance_of( Bowling_roll )
    end

    it "instantiates with a multiplier attribute which is initially set to nil" do
      expect( frame.multiplier ).to be(nil)
    end
  end

  describe "#record_roll" do
    it "sets the score of the correct roll to the appropriate value" do
      expect{ frame.record_roll(frame.rollA, 8) }.to change{ frame.rollA.score }.from(0).to(8)
    end

    it "sets the frame multiplier to 2 when a strike is bowled" do
      expect{ frame.record_roll(frame.rollA, 10) }.to change{ frame.multiplier }.from(nil).to(2)
    end

    it "sets the frame multiplier to 1 when a spare is bowled" do
      frame.record_roll( frame.rollA, 8 )
      expect{ frame.record_roll(frame.rollB, 2) }.to change{ frame.multiplier }.from(nil).to(1)
    end
  end

end
