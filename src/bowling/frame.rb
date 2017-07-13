class Bowling_frame
  attr_reader :multiplier, :rollA, :rollB, :rollC

  def record_roll(roll, pins)
    roll.record_score(pins)
    set_multiplier
  end

  private

  def set_multiplier
    if @rollA.score == 10
      @multiplier = 2
    elsif @rollA.score + @rollB.score == 10
      @multiplier = 1
    else
      @multiplier = nil
    end
  end

  def initialize
    @rollA = Bowling_roll.new()
    @rollB = Bowling_roll.new()
    @rollC = Bowling_roll.new()
    @multiplier = nil
  end
end
