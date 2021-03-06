class RomanNumerals

  ROMAN = {
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
      raise "Value must be an integer in the range 0 - 3,999."
    end
    roman_numeral = ""
    ROMAN.each do |k, v|
    (n / k).times { roman_numeral << v; n -= k }
    end
    roman_numeral
  end
end
