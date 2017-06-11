class Fizzbuzz
  attr_reader :lower_limit, :upper_limit

  def initialize(lower_limit, upper_limit)
    @lower_limit = lower_limit
    @upper_limit = upper_limit
  end

  def fizzbuzz(number)

    if number == 0 # guard clause against input of 0
      return 0
    elsif number % (@lower_limit*@upper_limit) == 0 # immediately guards against multiples of both numbers
      return 'FizzBuzz'
    elsif number % (@upper_limit) == 0
      return 'Buzz'
    elsif number % (@lower_limit) == 0
      return 'Fizz'
    else
      return number
    end
  end

end
