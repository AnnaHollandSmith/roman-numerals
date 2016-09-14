# Roman Numerals Coding Kata
[The Kata](#the-kata) | [User Story](#user-story) | [Instructions](#instructions) | [Approach](#approach)


#### <a name=the-kata>The Kata:</a>
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

#### <a name="user-story">User Story:</a>
```
As a User
So that I can do my work faster with fewer errors
I want to be able to input an arabic number and receive a roman numeral in return
```
#### <a name="instructions">Instructions for use:</a>

- clone the repository:
```
https://github.com/AnnaHollandSmith/roman-numerals
```

- navigate into the appropriate directory:
```
cd roman-numerals
```

- install the required gems and ensure the appropriate ruby version is being used by running the following command in the command-line:
```
bundle install
```

- open IRB (the interactive ruby shell) in the command-line:
```
irb
```
- within IRB, require in the roman numerals ruby file contained in the lib folder of the project directory:
```
require './lib/roman_numerals'
```
**Converting to a Roman Numeral**
- use the method **RomanNumerals.convert(n)** to input a number which will generate the correct roman numeral for the number provided:
```
RomanNumerals.convert(199)
```
- to run tests, exit from irb and run:
```
rspec
```

#### <a name="approach">Approach:</a>

**Caveats:**
- The converter will only support numbers between 1 and 3999.
- Will support conversion to 'Modern Roman Numerals', which has the subtraction concept( under the modern numeric system an arabic 4 would be a roman IV rather than IIII)
- The Kata asks for the creation of a class to handle this conversion. As such, it has been interpreted that any solution should be a single class application.
