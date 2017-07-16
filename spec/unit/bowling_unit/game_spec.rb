require 'spec_helper' #requires spec_helper file

describe Bowling_game do

  let( :game ){ Bowling_game.new() }

  it "exists" do
    expect(game).to be_an_instance_of(Bowling_game)
  end

  describe "#new" do
    it "instantiates with 10 frames, which are all instances of the frame class" do
      expect( game.frame1 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame2 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame3 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame4 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame5 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame6 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame7 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame8 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame9 ).to be_an_instance_of( Bowling_frame )
      expect( game.frame10 ).to be_an_instance_of( Bowling_frame)
    end

  describe "#update_score" do
    
  end

  end



end
