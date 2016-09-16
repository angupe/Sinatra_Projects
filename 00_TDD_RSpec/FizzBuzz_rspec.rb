class FizzBuzz

  # def initialize(number = 0)
  #     @number = number
  #     @result = ""

  #   end

  def multiple(num)

      #   until @number == 101
      #   @result = ""
        if num % 15 == 0
          "FizzBuzz"
        elsif num % 3 == 0
          "Fizz"
        elsif num % 5 == 0
          "Buzz"
        elsif num.to_s.include? "1"
          "Bang"
        end

      #   if @number.to_s.include? "1"
      #     @result = @result << "Bang"
      #   end

      #   if @result.empty?
      #     puts @number

      #   else
      #     puts @result
      #   end

      #   @number += 1

      # end


  end

end

# trial = FizzBuzz.new.multiple




RSpec.describe "FizzBuzz checker" do

  it "receives a multiple of 3 and returns the right message" do
    expect(FizzBuzz.new.multiple(3)).to eq("Fizz")

  end

  it "receives a multiple of 5 and returns the right message" do
    expect(FizzBuzz.new.multiple(5)).to eq("Buzz")


  end

  it "number contains 1 and returns the right message" do
    expect(FizzBuzz.new.multiple(1)).to eq("Bang")

  end
end