// axee.com by Steve Axelrod

import UIKit

class CheckWriter
{


class func convert(amount: String) -> String   // axe assumes 0.00 minimum amount sent in  for 50 cents  0.50
{
let oneToNineteen = ["", "one", "two", "three", "four", "five", "six",   // axe numbers we index with are one relative
                     "seven", "eight", "nine", "ten", "eleven", "twelve",
                     "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
                     "eighteen", "nineteen"]

let tens = ["", "", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
            
let defaultString = "Zero Dollars and 00/100"
var retCents   = " and 0/100"
var retDollars = ""

 let newAmount = amount.components(separatedBy: CharacterSet(charactersIn: "0123456789.").inverted).joined() // axe remove any commas, spaces.... 
 var values = newAmount.components(separatedBy: ".")  // axe convert to 1234.56 format

 guard let dollars = values.first else
   {
   return defaultString 
   }
   
 values.removeFirst()
 if let cents = values.first
    {
    retCents = " and " + cents + "/100"    
    }

 guard var dollarAmount = Int(dollars) else { return defaultString }
 
 if dollarAmount < 1  { return "Zero Dollars" + retCents }
 if dollarAmount == 1 { return "One Dollar"   + retCents }
 
 while dollarAmount > 0
   {
   switch(dollarAmount)
      {
      case 1...19: 
           retDollars = retDollars + oneToNineteen[dollarAmount] + " dollars "
           dollarAmount -= dollarAmount

      case 20...99:
           let val = dollarAmount / 10   // axe get tens digit
           retDollars = retDollars + tens[val] + " "
           dollarAmount -= (val * 10)
           retDollars = retDollars + oneToNineteen[dollarAmount] + " dollars "
           dollarAmount -= dollarAmount
                   
      case 100...999: 
           let val = dollarAmount / 100  // axe get hundreds digit
           retDollars = retDollars + oneToNineteen[val] + " hundred "
           dollarAmount -= (val * 100)
           if dollarAmount == 0 { retDollars = retDollars + "dollars " }

      case 1000...9999: 
           let val = dollarAmount / 1000  // axe get thousands digit
           retDollars = retDollars + oneToNineteen[val] + " thousand "
           dollarAmount -= (val * 1000)
           if dollarAmount == 0 { retDollars = retDollars + "dollars " }
                   
      default: break
      }
   }
 
 let combined = retDollars + retCents
  
 return combined.replacingOccurrences(of: "  ", with: " ")
}


}
