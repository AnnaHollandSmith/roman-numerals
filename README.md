# Roman Numerals Coding Kata
 [User Story](#user-story) | [Instructions](#instructions) | [Approach](#approach) | [The Kata](#the-kata)

### <a name="user-story">User Story:</a>
```
As a User
So that I can do my work faster with fewer errors
I want to be able to input an arabic number and receive a roman numeral in return
```
### <a name="instructions">Instructions for use:</a>

**Setup:**

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

**Convert:**

- open IRB (the interactive ruby shell) in the command-line:
```
irb
```
- within IRB, require in the roman numerals ruby file contained in the lib folder of the project directory:
```
require './lib/roman_numerals'
```
- use the method **RomanNumerals.convert(n)** to input a number which will generate the correct roman numeral for the number provided:
```
RomanNumerals.convert(199)
```
**Tests:**

- to run tests, exit from irb and run:
```
rspec
```

### <a name="approach">Approach:</a>

**Caveats:**

- The converter will only support numbers between 1 and 3999.
-I have assumed that the convertor requires an output that corresponds to 'Modern Roman Numerals', which have the subtraction concept and special rules for 4, 9, 90, 400 and 900 (under the modern numeric system an Arabic 4 would be a Roman IV rather than IIII). In a production environment, as it is not explicitly stated in the spec this, is a detail that I would have clarified with the client.
- The Kata asks for the creation of a class to handle this conversion. As such, it has been interpreted that any solution should be a single class application.

**Technology and Tests**

My solution to the kata is written in Ruby and tested using RSpec.

As the commit history for this repository will demonstrate, I utilised a test-driven (TDD) approach to solving this kata. Practicing incremental test-driven development encouraged emergent design and ensured that the API was being designed from the client's perspective (delivering an MVP that served the purposes laid out in the specification and not succumbing to superfluous and unnecessarily complex features). In this kata, the API is just a single method, so there is not much to design but adopting such an approach ensured a solution that does not make inferences about the client's, intent or deliver functionality beyond the scope of the problem

**The Algorithm**

The algorithm for my convert method is relatively straightforward. I have created a constant _ROMAN_ and stored the base Roman numerals and the exception numerals as a hash. To convert a given integer to a Roman numeral, my _convert_ method iterates over all the keys within the _ROMAN_ hash and divides the number by the keys (the arabic numbers stored in the hash). If the given number is divisible by the current key within an iteration, it appends the corresponding Roman numeral for that key value pair to the _roman_numeral_ string.

Using the concrete example of 52, the method dictates that _roman_numeral_ is initially set to an empty string. The _convert_ method then iterates over all of the keys in the _ROMAN_ hash until it locates a key which 52 is divisible by (This is the reason behind the decision for the hash value to be stored in descending order). When it reaches 50 in the hash, 50 goes once into 52 (with a remainder of 2), so 'L' is appended into the _roman_numeral_ string. The process is continued with the remainder, with all keys being skipped until the final key, where 2 is found to be divisible by 1. 1 goes into 2 twice, so two "I"s are appended to the _roman_numeral_. This gives us an output of "LII"

### <a name=the-kata>The Kata:</a>

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
