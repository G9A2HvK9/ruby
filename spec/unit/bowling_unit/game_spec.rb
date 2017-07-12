require 'spec_helper' #requires spec_helper file

describe Bowling_game do

  let( :game ){ Bowling_game.new() }

  it "exists" do
    expect(game).to be_an_instance_of(Bowling_game)
  end

  describe "#new" do

  end

end
