require 'spec_helper' #requires spec_helper file

describe Bowling_game do

  let( :game ){ Bowling_game.new() }

  it "exists" do
    expect( game ).to be_an_instance_of( Bowling_game )
  end

  describe "#play_roll(pins)" do
    it "is an impactful function with 1 argument" do
      expect( game ).to respond_to( :play_roll ).with(1).argument
    end

    context "when rolling less than a 10 on the first roll" do

      it "adds 1 to the roll count" do
        expect{ game.play_roll(5) }.to change{ game.roll_count }.from(0).to(1)
      end

      it "creates a new instance of the roll class with a multiplier of 0" do
        game.play_roll(5)
        expect( game.score_hash[1] ).to be_an_instance_of( Bowling_roll )
        expect( game.score_hash[1].multiplier ).to be(0)
      end

      it "adds a score of 5 to the score hash with a key of 1" do
        game.play_roll(5)
        expect( game.score_hash[1].score ).to be(5)
      end

      it "updates the remaining pins to 5" do
        expect{ game.play_roll(5) }.to change{ game.remaining_pins }.from(10).to(5)
      end

    end

    context "when rolling a strike" do

      it "adds 2 to the roll count" do
        expect{ game.play_roll(10) }.to change{ game.roll_count }.from(0).to(2)
      end

      it "creates a new instance of the roll class with a multiplier of 3" do
        game.play_roll(10)
        expect( game.score_hash[2] ).to be_an_instance_of( Bowling_roll )
        expect( game.score_hash[2].multiplier ).to be(3)
      end

      it "adds a score of 10 to the score hash with a key of 2" do
        game.play_roll(10)
        expect( game.score_hash[2].score ).to be(10)
      end

      it "updates the remaining pins to 5" do
        expect{ game.play_roll(10) }.not_to change{ game.remaining_pins }
      end

    end
  end


end
