import XCTest
import Refined

final class GreaterEqualTests: XCTestCase {
    func testGreaterEqualCanBeValid() {
        XCTAssertNotNil(Int.GreaterEqual<One>.And.GreaterEqual<One>(1))
        XCTAssertNotNil(Refined<GreaterEqual<Four>>(6))
        XCTAssertNotNil(Int.GreaterEqual<Four>.Or.GreaterEqual<One>(4))
        XCTAssertNotNil(Double.GreaterEqual<TwoDotFive>(3.6))
    }

    func testGreaterEqualCanBeInvalid() {
        XCTAssertNil(Refined<GreaterEqual<Three>>(2))
        XCTAssertNil(Int.GreaterEqual<Four>.And.GreaterEqual<Three>(3))
        XCTAssertNil(Double.GreaterEqual<TwoDotFive>(0))
    }

    static var allTests = [
        ("testGreaterEqualCanBeValid", testGreaterEqualCanBeValid),
        ("testGreaterEqualCanBeInvalid", testGreaterEqualCanBeInvalid),
    ]
}
