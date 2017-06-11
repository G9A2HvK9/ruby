require 'spec_helper' #requires spec_helper file
require 'web_helper' #require web-helper to stream line rspec testing
require './src/fizzbuzz/fizzbuzz.rb' # requires fizzbuzz source file for rspec testing

describe Fizzbuzz do

  before do
    @class = Fizzbuzz.new(3, 5)
  end

  it 'exists' do
    expect(@class).to be_a_kind_of(Fizzbuzz)
  end

  it 'has two attributes - lower_limit and upper_limit' do
    expect(@class.lower_limit).to eq(3)
    expect(@class.upper_limit).to eq(5)
  end

  it 'has a method called fizzbuzz which takes one argument' do
    expect(@class).to respond_to(:fizzbuzz).with(1).argument
  end

  context "when handed a multiple of 3" do
    before do
      @multiple_3 = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48].sample
    end

    it "returns fizz when handed 3" do
      expect(@class.fizzbuzz(3)).to eq('fizz')
    end

    it "returns fizz when handed 27" do
      expect(@class.fizzbuzz(27)).to eq('fizz')
    end

    it "returns fizz when handed a random multiple of 3" do
      expect(@class.fizzbuzz(@multiple_3)).to eq('fizz')
    end
  end

  context "when handed a multiple 5" do
    before do
      @multiple_5 = [5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80, 85, 95, 100].sample
    end

    it "returns buzz when handed 5" do
      expect(@class.fizzbuzz(5)).to eq('buzz')
    end

    it "returns buzz when handed 35" do
      expect(@class.fizzbuzz(35)).to eq('buzz')
    end

    it "returns buzz when handed a random multiple of 5" do
      expect(@class.fizzbuzz(@multiple_5)).to eq('buzz')
    end
  end

  context "when handed a multiple 3 and 5" do
    before do
      @multiple_15 = [15, 30, 45, 60, 75, 90, 105, 120, 135].sample
    end

    it "returns buzz when handed 5" do
      expect(@class.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it "returns buzz when handed 35" do
      expect(@class.fizzbuzz(60)).to eq('fizzbuzz')
    end

    it "returns buzz when handed a random multiple of 5" do
      expect(@class.fizzbuzz(@multiple_15)).to eq('fizzbuzz')
    end
  end

  context "when handed neither a multiple of 3 nor 5" do
    before do
      @non_multiple = [2, 8, 11, 29, 74, 1123].sample
    end

    it "returns 0 when handed 0" do
      expect(@class.fizzbuzz(0)).to eq(0)
    end

    it "returns 40 when handed 44" do
      expect(@class.fizzbuzz(44)).to eq(44)
    end

    it "returns non_multiple number when handed non_multiple number" do
      expect(@class.fizzbuzz(@non_multiple)).to eq(@non_multiple)
    end
  end

end
