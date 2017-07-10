require './src/fizzbuzz/fizzbuzz.rb'

class Fizzbuzz_Runner
  attr_reader :initial, :html_array, :fizzbuzz, :display_string

  def self.create(lower_value, upper_value, lower_limit, upper_limit)
    @fizzbuzz_runner_instance ||= Fizzbuzz_Runner.new(lower_value, upper_value, lower_limit, upper_limit)
  end

  def self.instance
    @fizzbuzz_runner_instance
  end

  def execute
    html_builder
    @display_string = @html_array.join('')
  end

  private

  def initialize(lower_value, upper_value, lower_limit, upper_limit)
    @fizzbuzz = Fizzbuzz.new(lower_value, upper_value)
    @initial = (lower_limit..upper_limit).to_a
    @html_array = []
  end

  def html_builder
    @html_array.push('<ul id="fizzbuzz_list">')
    @initial.each{ |number| @html_array.push("<li>#{@fizzbuzz.run(number)}</li>") }
    @html_array.push("</ul>")
  end

end
