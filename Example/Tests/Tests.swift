import UIKit
import XCTest
import ConvertNumbersToWords

class Tests: XCTestCase 
{
    
override func setUp() 
{
 super.setUp() // Put setup code here. This method is called before the invocation of each test method in the class.
}
    

override func tearDown() 
{
 super.tearDown() // Put teardown code here. This method is called after the invocation of each test method in the class.
}

    
func testExample() 
{
 print("********************************************************")
 var amt = 1.23
 
 while amt <= 999999
   { 
   print("Original: \(amt)  -->  \(Converter.convert(amount: String(amt)))")
   amt += 1
   }

 print("********************************************************")
 XCTAssert(true, "Pass")
}

    
func testPerformanceExample() 
{
 self.measure() 
   {
   // Put the code you want to measure the time of here.
   }
}

    
}
