require 'spec_helper' #requires spec_helper file

describe Bowling_game do

  before do
    @game = Bowling_game.new
  end

  it "exists" do
    expect(@game).to be_an_instance_of(Bowling_game)
  end

  describe "#new" do
    
  end

end
