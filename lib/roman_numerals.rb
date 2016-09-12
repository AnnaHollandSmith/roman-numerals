class RomanNumerals

  ROMAN_NUMERALS = {
              1000 => "M",
              900 => "CM",
              500 => "D",
              400 => "CD",
              100 => "C",
              90 => "XC",
              50 => "L",
              40 => "XL",
              10 => "X",
              9 => "IX",
              5 => "V",
              4 => "IV",
              1 => "I"
                }

  def self.convert(n)
      if n <= 0 || n > 3999
        raise "Value must be in the range 0 - 3,999."
      end
      roman_numeral = ""
      ROMAN_NUMERALS.each do |key, value|
        (n / key).times { roman_numeral << value; n -= key }
      end
      roman_numeral
    end
  end
