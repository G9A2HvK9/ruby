require './src/fizzbuzz/fizzbuzz_runner.rb'


describe Fizzbuzz_Runner do

  before do
    @fizzbuzz_runner = Fizzbuzz_Runner.new(3,5,0,15)
  end

  it "exists" do
    expect(@fizzbuzz_runner).to be_an_instance_of(Fizzbuzz_Runner)
  end

  describe "#new" do

    it "has 2 attributes which are arrays - initial and final" do
      expect(@fizzbuzz_runner.initial).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
      expect(@fizzbuzz_runner.final).to eq([])
    end

    it "has an attribute @fizzbuzz which is an instance of the FizzBuzz class" do
      expect(@fizzbuzz_runner.fizzbuzz).to be_an_instance_of(Fizzbuzz)
    end

    it "responds to the method execute" do
      expect(@fizzbuzz_runner).to respond_to(:execute)
    end

    describe "#execute" do

      context "when handed arguments 3, 5, 0 and 15" do

        it "stores the correct responses in the @final array" do
          @fizzbuzz_runner.execute
          expect(@fizzbuzz_runner.final).to eq([0, 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"])
        end
      end
    end

  end


end
