require 'spec_helper'

describe Bowling_roll do

  let( :roll ){ Bowling_roll.new() }

  it "exists" do
    expect(roll).to be_an_instance_of(Bowling_roll)
  end

end
