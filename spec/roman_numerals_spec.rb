require "roman_numerals"

describe RomanNumerals do
  context "it converts a given number into a roman numeral" do
    it "should convert 1 into I" do
      expect(RomanNumerals.convert(1)).to eq("I")
    end
  end
end
