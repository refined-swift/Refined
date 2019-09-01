import XCTest
import Refined

final class EqualTests: XCTestCase {
    func testEqualCanBeValid() {
        XCTAssertNotNil(Int.Equal<One>.or.Equal<Four>(1))
        XCTAssertNotNil(Refined<Equal<Four>>(4))
        XCTAssertNotNil(Int.Equal<Four>.or.Equal<One>(4))
        XCTAssertNotNil(Double.Equal<TwoDotFive>(2.5))
    }

    func testEqualCanBeInvalid() {
        XCTAssertNil(Refined<Equal<Three>>(4))
        XCTAssertNil(Int.Equal<Four>.and.Equal<Three>(3))
        XCTAssertNil(Double.Equal<TwoDotFive>(3))
    }

    static var allTests = [
        ("testEqualCanBeValid", testEqualCanBeValid),
        ("testEqualCanBeInvalid", testEqualCanBeInvalid),
    ]
}
