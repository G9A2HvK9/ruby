require 'spec_helper' #requires spec_helper file

describe Bowling_frame do

  let( :frame ){ Bowling_frame.new() }

  it "exists" do
    expect(frame).to be_an_instance_of(Bowling_frame)
  end

end
