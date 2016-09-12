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

    it "should convert 50 into L" do
      expect(RomanNumerals.convert(50)).to eq("L")
    end

    it "should convert 100 into C" do
      expect(RomanNumerals.convert(100)).to eq("C")
    end

    it "should convert 500 into D" do
      expect(RomanNumerals.convert(500)).to eq("D")
    end

    it "should convert 1000 into M" do
      expect(RomanNumerals.convert(1000)).to eq("M")
    end
  end
end
