require './src/fizzbuzz/fizzbuzz.rb'

class Fizzbuzz_Runner
  attr_reader :initial, :final, :fizzbuzz

  def self.create(lower_value, upper_value, lower_limit, upper_limit)
    @fizzbuzz_runner_instance ||= Fizzbuzz_Runner.new(lower_value, upper_value, lower_limit, upper_limit)
  end

  def self.instance
    @fizzbuzz_runner_instance
  end

  def execute
    @initial.each{ |number| @final.push(@fizzbuzz.run(number)) }
  end

  private

  def initialize(lower_value, upper_value, lower_limit, upper_limit)
    @fizzbuzz = Fizzbuzz.new(lower_value, upper_value)
    @initial = (lower_limit..upper_limit).to_a
    @final = []
  end

end
