import XCTest
import Refined

final class EqualTests: XCTestCase {
    func testEqualCanBeValid() {
        XCTAssertNotNil(Int.Equal<One>.Or.Equal<Four>(1))
        XCTAssertNotNil(Refined<Equal<Four>>(4))
        XCTAssertNotNil(Int.Equal<Four>.Or.Equal<One>(4))
        XCTAssertNotNil(Double.Equal<TwoDotFive>(2.5))
    }

    func testEqualCanBeInvalid() {
        XCTAssertNil(Refined<Equal<Three>>(4))
        XCTAssertNil(Int.Equal<Four>.And.Equal<Three>(3))
        XCTAssertNil(Double.Equal<TwoDotFive>(3))
    }

    static var allTests = [
        ("testEqualCanBeValid", testEqualCanBeValid),
        ("testEqualCanBeInvalid", testEqualCanBeInvalid),
    ]
}
