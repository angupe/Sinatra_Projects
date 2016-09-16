class StringCalculator

    def add(input)
        sum = 0
        input.split(",").each do |s|
            sum += s.to_i
        end
        sum
    end

end

# a.split(',').map(&:to_i).reduce(0,:+)

RSpec.describe "String Calculator Test" do

    it "zero digits" do
        expect(StringCalculator.new.add("")).to eq(0)
    end

    it "returns number if I receive string with one number" do
        expect(StringCalculator.new.add("2")).to eq(2)
    end

    it "returns number if I receive string with one number" do
        expect(StringCalculator.new.add("3")).to eq(3)
    end

    it "returns number if I receive string with two numbers" do
        expect(StringCalculator.new.add("1,2")).to eq(3)
    end

end



# RSpec.describe "String Calculator Test" do

#     let(:calculator) {StringCalculator.new}

#     it "zero digits" do
#         expect(calculator.add("")).to eq(0)
#     end

#     it "returns number if I receive string with one number" do
#         expect(calculator.add("2")).to eq(2)
#     end

#     it "returns number if I receive string with one number" do
#         expect(calculator.add("3")).to eq(3)
#     end

#     it "returns number if I receive string with two numbers" do
#         expect(calculator.add("1,2")).to eq(3)
#     end

# end








