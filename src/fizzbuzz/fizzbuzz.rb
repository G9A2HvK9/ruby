class Fizzbuzz
  attr_reader :lower_value, :upper_value, :game_array

  def self.create(lower_value, upper_value)
    @fizzbuzz_instance ||= Fizzbuzz.new(lower_value, upper_value,)
  end

  def self.instance # lets assigns class to its own instance variable for persistence in controller
    @fizzbuzz_instance
  end

  def run(number)
    if number == 0 # guard clause against input of 0
      return 0
    elsif multiple_of?(number, (@lower_value*@upper_value)) # returns FizzBuzz if multiple of both values
      return 'FizzBuzz'
    elsif multiple_of?(number, @upper_value) # returns Buzz if multiple of upper value
      return 'Buzz'
    elsif multiple_of?(number, @lower_value) # returns Fizz if multiple of lower value
      return 'Fizz'
    else # returns just the number in all other cases
      return number
    end
  end

  private

  def initialize(lower_value, upper_value) # initializes lower and upper value to return Fizz and Buzz respectiveluy.
    @lower_value = lower_value
    @upper_value = upper_value
  end

  def multiple_of?(number, value) # helper function to determine whether current number is divisible by the respective limit
    number % value == 0
  end

end
