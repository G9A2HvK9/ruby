class Bowling_game
  attr_reader :roll_count, :remaining_pins, :score_hash



  def play_roll(pins)
    increase_roll_count(pins)
    @score_hash[@roll_count] = pins
    update_pins(pins)
  end

  private

  def initialize(roll_count = 0)
    @roll_count = roll_count
    @remaining_pins = 10
    @score_hash = {}
  end

  def update_pins(pins)
    if !@roll_count.even? && pins < 10
      @remaining_pins -= pins
    else
      @remaining_pins = 10
    end
  end

  def increase_roll_count(pins)
    if @roll_count.even? && pins == 10
      @roll_count += 2
    else
      @roll_count += 1
    end
  end

end
