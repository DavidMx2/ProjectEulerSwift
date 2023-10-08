import Foundation
import XCTest

class MyTestCase: XCTestCase {
    
    /*If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
     The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000. */
    func solve(input: Int) -> Int {
        Array(1..<input).reduce(0) { partialResult, number in
            guard number.isMultiple(of: 3) || number.isMultiple(of: 5) else { return partialResult }
            return partialResult + number
        }
    }
    
    func testFunction() {
        XCTAssertEqual(solve(input: 10), 23)
    }
}

MyTestCase.defaultTestSuite.run()

print("The solution is \(MyTestCase().solve(input: 1000))")
