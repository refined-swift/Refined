import XCTest
import Refined

final class LessEqualTests: XCTestCase {
    func testLessEqualCanBeValid() {
        XCTAssertNotNil(Int.LessEqual<One>.and.LessEqual<One>(1))
        XCTAssertNotNil(Refined<LessEqual<Four>>(4))
        XCTAssertNotNil(Int.LessEqual<Four>.or.LessEqual<One>(-3))
        XCTAssertNotNil(Double.LessEqual<TwoDotFive>(0.5))
    }

    func testLessEqualCanBeInvalid() {
        XCTAssertNil(Refined<LessEqual<Three>>(4))
        XCTAssertNil(Int.LessEqual<Four>.and.LessEqual<Three>(4))
        XCTAssertNil(Double.LessEqual<TwoDotFive>(3.1))
    }

    static var allTests = [
        ("testLessEqualCanBeValid", testLessEqualCanBeValid),
        ("testLessEqualCanBeInvalid", testLessEqualCanBeInvalid),
    ]
}
