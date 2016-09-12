# Roman Numerals Coding Kata

#### The Problem:
```
In whatever language you prefer, write a class that implements the following interface (example given in Java):


public interface RomanNumeralGenerator {

    public String generate(int number);

}

For example, see the following sample inputs and outputs:

1 = “I”
5 = “V”
10 = “X”
20 = “XX”
3999 = “MMMCMXCIX”

Caveat: Only support numbers between 1 and 3999
```

#### User Story:
```
As a User
So that I can do my work faster with fewer errors.
I want to be able to input an arabic number and receive a roman numeral in return
```
#### Instructions for use:

1. clone the repository:
```
https://github.com/AnnaHollandSmith/roman-numerals
```

2. navigate into the appropriate directory:
```
cd roman-numerals
```

3. install the required gems and ensure the appropriate ruby version is being used by running the following command in the command-line:
```
bundle install
```

4. open IRB (the interactive ruby shell) in the command-line:
```
irb
```
5. within IRB, require in the roman numerals ruby file contained in the lib folder of the project directory:
```
require './lib/roman_numerals'
```
6. use the method **RomanNumerals.convert(n)** to input a number which will generate the correct roman numeral for the number provided:
```
RomanNumerals.convert(199)
```
7. to run tests, exit from irb and run:
```
rspec
```
