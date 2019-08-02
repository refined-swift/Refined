import XCTest
import Refined

final class GreaterTests: XCTestCase {
    func testGreaterCanBeValid() {
        XCTAssertNotNil(Int.Greater<One>.Or.Greater<One>(2))
        XCTAssertNotNil(Refined<Greater<Four>>(6))
        XCTAssertNotNil(Int.Greater<Four>.Or.Greater<One>(2))
        XCTAssertNotNil(Double.Greater<TwoDotFive>(2.51))
    }

    func testGreaterCanBeInvalid() {
        XCTAssertNil(Refined<Greater<Three>>(3))
        XCTAssertNil(Int.Greater<Four>.And.Greater<Three>(4))
        XCTAssertNil(Double.Greater<TwoDotFive>(-1.5))
    }

    static var allTests = [
        ("testGreaterCanBeValid", testGreaterCanBeValid),
        ("testGreaterCanBeInvalid", testGreaterCanBeInvalid),
    ]
}
