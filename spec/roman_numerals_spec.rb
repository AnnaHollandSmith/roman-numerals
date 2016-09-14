require "roman_numerals"

describe RomanNumerals do
  subject { RomanNumerals }

  describe '#convert' do

    context "it converts a given number into a roman numeral" do
      it "should convert 1 into I" do
        expect(subject.convert(1)).to eq("I")
      end

      it "should convert 5 into V" do
        expect(subject.convert(5)).to eq("V")
      end

      it "should convert 10 into X" do
        expect(subject.convert(10)).to eq("X")
      end

      it "should convert 50 into L" do
        expect(subject.convert(50)).to eq("L")
      end

      it "should convert 100 into C" do
        expect(subject.convert(100)).to eq("C")
      end

      it "should convert 500 into D" do
        expect(subject.convert(500)).to eq("D")
      end

      it "should convert 1000 into M" do
        expect(subject.convert(1000)).to eq("M")
      end
    end

    context "it uses additional notation to convert numbers to roman numerals" do
      it "should convert 25 into XXV" do
        expect(subject.convert(25)).to eq("XXV")
      end

      it "should  convert 44 into XLIV" do
        expect(subject.convert(44)).to eq("XLIV")
      end

      it "should convert 102 into CII" do
        expect(subject.convert(102)).to eq("CII")
      end

      it "should convert 552 into DLII" do
        expect(subject.convert(552)).to eq("DLII")
      end

      it "should convert 2653 into MMDCLIII" do
        expect(subject.convert(2653)).to eq("MMDCLIII")
      end

      it "should convert 3000 into MMM" do
        expect(subject.convert(3000)).to eq("MMM")
      end
     end

    context "it uses subtractive notation to convert numbers to roman numerals" do
      it "should convert 996 into CMXCVI" do
        expect(subject.convert(996)).to eq("CMXCVI")
      end

      it "should convert 449 into CDXLIX" do
        expect(subject.convert(449)).to eq("CDXLIX")
      end

      it "should convert 99 into XCIX" do
        expect(subject.convert(99)).to eq("XCIX")
      end

      it "should convert 9 into IX" do
        expect(subject.convert(9)).to eq("IX")
      end
      it "should convert 3999 into MMMCMXCIX" do
        expect(subject.convert(3999)).to eq("MMMCMXCIX")
      end
    end

    context " it provides the answer to a mathematical expression in roman numerals" do
      it "should convert 3 + 3 into VI" do
        expect(subject.convert(3 + 3)).to eq("VI")
      end
      it "should convert 50 * 3 into CL" do
        expect(subject.convert(50 * 3)).to eq("CL")
      end
      it "should convert (22 * 4) / 2 into XLIV " do
        expect(subject.convert((22 * 4) / 2)).to eq("XLIV")
      end
      it "should convert ((398 * 2) * 4 ) / 3 into " do
        expect(subject.convert(((398 * 2) * 4 ) / 3)).to eq("MLXI")
      end
    end

    context "there is no zero in roman numerals" do
      it "should raise an error when given a zero" do
        expect{ subject.convert(0) }.to raise_error("Value must be an integer in the range 0 - 3,999.")
      end
    end

    context "only operates for integers between and including 1 and 3999" do
      it "should raise an error when given an integer that is not positive" do
        expect{ subject.convert(-5) }.to raise_error("Value must be an integer in the range 0 - 3,999.")
      end
      it "should raise an error when given an integer greater than 3999" do
        expect{ subject.convert(6000) }.to raise_error("Value must be an integer in the range 0 - 3,999.")
      end
      it 'should not accept a string input' do
        expect{ subject.convert('test') }.to raise_error(ArgumentError)
        expect{ subject.convert('33') }.to raise_error(ArgumentError)
      end
      it "should not accept a float input" do
        expect{ subject.convert(3.5) }.to raise_error(NoMethodError)
      end
    end
  end
end
