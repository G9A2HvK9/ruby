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

    it "adds 1 to the roll count when no strike was rolled on the first roll" do
      expect{ game.play_roll(5) }.to change{ game.roll_count }.from(0).to(1)
    end

    it "adds 2 to the roll count when a strike was rolled on the first roll" do
      expect{ game.play_roll(10) }.to change{ game.roll_count }.from(0).to(2)
    end

    it "adds 1 to the roll count when 10 pins topple on the second roll" do
      game.play_roll(0)
      expect{ game.play_roll(10) }.to change{ game.roll_count }.from(1).to(2)
    end

    it "dynamically updates the number of remaining_pins" do
      expect{ game.play_roll(5) }.to change{ game.remaining_pins }.from(10).to(5)
    end

    it "resets the pins after the second roll" do
      game.play_roll(2)
      expect{ game.play_roll(3) }.to change{ game.remaining_pins }.from(8).to(10)
    end

    it "resets the pins after a strike is rolled" do
      expect{ game.play_roll(10) }.not_to change{ game.remaining_pins }
    end
  end



end
