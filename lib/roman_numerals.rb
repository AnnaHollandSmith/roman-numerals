class RomanNumerals

  ROMAN_NUMERALS = { 1 => "I", 5 => "V", 10 => "X" }

  def self.convert(n)
    ROMAN_NUMERALS[n]
  end

end
