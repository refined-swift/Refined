import XCTest
import Refined

final class LessTests: XCTestCase {
    func testLessCanBeValid() {
        XCTAssertNotNil(Int.Less<One>.or.Less<One>(0))
        XCTAssertNotNil(Refined<Less<Four>>(3))
        XCTAssertNotNil(Int.Less<Four>.or.Less<One>(3))
        XCTAssertNotNil(Double.Less<TwoDotFive>(1.5))
    }

    func testLessCanBeInvalid() {
        XCTAssertNil(Refined<Less<Three>>(4))
        XCTAssertNil(Int.Less<Four>.and.Less<Three>(3))
        XCTAssertNil(Double.Less<TwoDotFive>(3))
    }

    static var allTests = [
        ("testLessCanBeValid", testLessCanBeValid),
        ("testLessCanBeInvalid", testLessCanBeInvalid),
    ]
}
