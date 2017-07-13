class Bowling_roll
  attr_reader :score

  def record_score(pins)
    @score += pins
  end

  private

  def initialize
    @score = 0
  end

end
