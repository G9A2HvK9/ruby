class Bowling_game
  attr_reader :frame1, :frame2, :frame3, :frame4, :frame5, :frame6, :frame7, :frame8, :frame9, :frame10



  private

  def initialize
    @frame1 = Bowling_frame.new()
    @frame2 = Bowling_frame.new()
    @frame3 = Bowling_frame.new()
    @frame4 = Bowling_frame.new()
    @frame5 = Bowling_frame.new()
    @frame6 = Bowling_frame.new()
    @frame7 = Bowling_frame.new()
    @frame8 = Bowling_frame.new()
    @frame9 = Bowling_frame.new()
    @frame10 = Bowling_frame.new()
  end

end
