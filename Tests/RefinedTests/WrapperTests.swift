import XCTest
import Wrapper
import Refined

final class WrapperTests: XCTestCase {
    func testLessIsWrapped() {
        XCTAssertTrue(Int.Less<Four>(3)! < 4)
    }
    
    func testLessEqualIsWrapped() {
        XCTAssertTrue(Int.LessEqual<One>(1)! <= 2)
    }
    
    func testEqualIsWrapped() {
        XCTAssertTrue(Double.Equal<TwoDotFive>(2.5)! == 2.5)
    }
    
    func testGreaterEqualIsWrapped() {
        XCTAssertTrue(Int.GreaterEqual<Three>(3)! >= 3)
    }

    func testGreaterIsWrapped() {
        XCTAssertTrue(Double.Greater<TwoDotFive>(5.2)! > 2.5)
    }

    static var allTests = [
        ("testLessIsWrapped", testLessIsWrapped),
        ("testLessEqualIsWrapped", testLessEqualIsWrapped),
        ("testEqualIsWrapped", testEqualIsWrapped),
        ("testGreaterEqualIsWrapped", testGreaterEqualIsWrapped),
        ("testGreaterIsWrapped", testGreaterIsWrapped),
    ]
}
