import XCTest
import Refined

final class GreaterTests: XCTestCase {
    func testGreaterCanBeValid() {
        XCTAssertNotNil(Int.Greater<One>.or.Greater<One>(2))
        XCTAssertNotNil(Refined<Greater<Four>>(6))
        XCTAssertNotNil(Int.Greater<Four>.or.Greater<One>(2))
        XCTAssertNotNil(Double.Greater<TwoDotFive>(2.51))
    }

    func testGreaterCanBeInvalid() {
        XCTAssertNil(Refined<Greater<Three>>(3))
        XCTAssertNil(Int.Greater<Four>.and.Greater<Three>(4))
        XCTAssertNil(Double.Greater<TwoDotFive>(-1.5))
    }

    static var allTests = [
        ("testGreaterCanBeValid", testGreaterCanBeValid),
        ("testGreaterCanBeInvalid", testGreaterCanBeInvalid),
    ]
}
