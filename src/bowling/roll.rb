class Bowling_roll
  attr_reader :score, :multiplier

  private

  def initialize(pins, multiplier)
    @score = pins
    @multiplier = multiplier
  end
end
