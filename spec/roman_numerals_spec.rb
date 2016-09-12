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

  context "it uses additional notation to convert numbers to roman numerals" do

    it "should convert 25 into XXV" do
      expect(RomanNumerals.convert(25)).to eq("XXV")
    end

    it "should convert 102 into CII" do
      expect(RomanNumerals.convert(102)).to eq("CII")
    end

    it "should convert 552 into DLII" do
      expect(RomanNumerals.convert(552)).to eq("DLII")
    end

    it "should convert 2653 into MMDCLIII" do
      expect(RomanNumerals.convert(2653)).to eq("MMDCLIII")
    end

    it "should convert 3000 into MMM" do
      expect(RomanNumerals.convert(3000)).to eq("MMM")
    end
  end

  context "it uses subtractive notation to convert numbers to roman numerals" do

    it "should convert 996 into CMXCVI" do
      expect(RomanNumerals.convert(996)).to eq("CMXCVI")
    end

    it "should convert 449 into CDXLIX" do
      expect(RomanNumerals.convert(449)).to eq("CDXLIX")
    end

    it "should convert 99 into XCIX" do
      expect(RomanNumerals.convert(99)).to eq("XCIX")
    end
  end

  context "when the input is invalid" do
    it "should raise an error when given an integer that is not positive" do
      expect{ RomanNumerals.convert(0) }.to raise_error("Value must be in the range 0 - 3,999.")
    end

    it "should raise an error when given an integer greater than 3999" do
      expect{ RomanNumerals.convert(6000) }.to raise_error("Value must be in the range 0 - 3,999.")
    end
  end
end
