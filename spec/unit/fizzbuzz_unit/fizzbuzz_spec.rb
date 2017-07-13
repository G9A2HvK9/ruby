require 'spec_helper' #requires spec_helper file

describe Fizzbuzz do

  let( :fizzbuzz ){ Fizzbuzz.new(3, 5) }

  it 'exists' do
    expect(fizzbuzz).to be_a_kind_of(Fizzbuzz)
  end

  describe "#new" do

    it 'has 3 attributes - lower_value, upper_value and game_array' do
      expect(fizzbuzz.lower_value).to eq(3)
      expect(fizzbuzz.upper_value).to eq(5)
    end

    it 'has a method called run which takes one argument' do
      expect(fizzbuzz).to respond_to(:run).with(1).argument
    end

  end

  describe "#run" do

    context "when handed a multiple of 3" do
      before do
        @multiple_3 = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48].sample
      end

      it "returns fizz when handed 3" do
        expect(fizzbuzz.run(3)).to eq('Fizz')
      end

      it "returns Fizz when handed 27" do
        expect(fizzbuzz.run(27)).to eq('Fizz')
      end

      it "returns Fizz when handed a random multiple of 3" do
        expect(fizzbuzz.run(@multiple_3)).to eq('Fizz')
      end
    end

    context "when handed a multiple 5" do
      before do
        @multiple_5 = [5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80, 85, 95, 100].sample
      end

      it "returns buzz when handed 5" do
        expect(fizzbuzz.run(5)).to eq('Buzz')
      end

      it "returns Buzz when handed 35" do
        expect(fizzbuzz.run(35)).to eq('Buzz')
      end

      it "returns Buzz when handed a random multiple of 5" do
        expect(fizzbuzz.run(@multiple_5)).to eq('Buzz')
      end
    end

    context "when handed a multiple 3 and 5" do
      before do
        @multiple_15 = [15, 30, 45, 60, 75, 90, 105, 120, 135].sample
      end

      it "returns buzz when handed 5" do
        expect(fizzbuzz.run(15)).to eq('FizzBuzz')
      end

      it "returns buzz when handed 35" do
        expect(fizzbuzz.run(60)).to eq('FizzBuzz')
      end

      it "returns buzz when handed a random multiple of 15" do
        expect(fizzbuzz.run(@multiple_15)).to eq('FizzBuzz')
      end
    end

    context "when handed neither a multiple of 3 nor 5" do
      before do
        @non_multiple = [2, 8, 11, 29, 74, 1123].sample
      end

      it "returns 0 when handed 0" do
        expect(fizzbuzz.run(0)).to eq(0)
      end

      it "returns 40 when handed 44" do
        expect(fizzbuzz.run(44)).to eq(44)
      end

      it "returns non_multiple number when handed non_multiple number" do
        expect(fizzbuzz.run(@non_multiple)).to eq(@non_multiple)
      end
    end

  end

end
