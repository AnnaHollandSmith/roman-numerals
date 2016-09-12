require "roman_numerals"

describe RomanNumerals do
  context "it converts a given number into a roman numeral" do

    it "should convert 1 into I" do
      expect(RomanNumerals.convert(1)).to eq("I")
    end

    it "should convert 5 into V" do
      expect(RomanNumerals.convert(5)).to eq("V")
    end

    it "should convert 10 into X" do
      expect(RomanNumerals.convert(10)).to eq("X") 
    end
  end
end
