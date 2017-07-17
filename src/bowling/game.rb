class Bowling_game
  attr_reader :roll_count, :remaining_pins, :score_hash



  def play_roll(pins)
    update_roll_count(pins)
    create_roll_instance(pins)
    @score_hash[@roll_count] = @current_roll
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

  def update_roll_count(pins)
    if @roll_count.even? && pins == 10
      @roll_count += 2
    else
      @roll_count += 1
    end
  end

  def create_roll_instance(pins)
    if @roll_count.even? && clear?(pins)
      multiplier = 3
    elsif !@roll_count.even? && clear?(pins)
      multiplier = 1
    else
      multiplier = 0
    end
    @current_roll = Bowling_roll.new(pins, multiplier)
  end

  def clear?(pins)
    @remaining_pins - pins == 0
  end

end
