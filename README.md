# ConvertNumbersToWords converts numbers as strings to english words 

[![CI Status](http://img.shields.io/travis/steveaxelrod007/ConvertNumbersToWords.svg?style=flat)](https://travis-ci.org/steveaxelrod007/ConvertNumbersToWords)
[![Version](https://img.shields.io/cocoapods/v/ConvertNumbersToWords.svg?style=flat)](http://cocoapods.org/pods/ConvertNumbersToWords)
[![License](https://img.shields.io/cocoapods/l/ConvertNumbersToWords.svg?style=flat)](http://cocoapods.org/pods/ConvertNumbersToWords)
[![Platform](https://img.shields.io/cocoapods/p/ConvertNumbersToWords.svg?style=flat)](http://cocoapods.org/pods/ConvertNumbersToWords)

## Example

let words = Converter.convert(amount: "1.31") 
print(words)
One Dollar and 31/100

let words = Converter.convert(amount: "9,304.67") 
print(words)
nine thousand three hundred four dollars and 67/100

amount can be 0.01 ... 999,999.99  nine hundred ninety nine thousand nine hundred ninety nine dollars and 99/100

## Requirements

## Installation

ConvertNumbersToWords is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ConvertNumbersToWords"
```

## Author

axee.com  steve@axelrod.net

## License

ConvertNumbersToWords is available under the MIT license. See the LICENSE file for more info.
