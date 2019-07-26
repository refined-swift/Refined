import XCTest
import Refined

final class NumberTests: XCTestCase {
    func testNonNumberUsesNot() {
        XCTAssertTrue((Character.NonNumber.self as Any.Type) is Refined<Not<Number<Character>>>.Type)
    }

    func testNumberCanBeValid() {
        XCTAssertNotNil(Character.Number("0"))
    }

    func testNumberCanBeInvalid() {
        XCTAssertNil(Character.Number("a"))
    }

    static var allTests = [
        ("testNonNumberUsesNot", testNonNumberUsesNot),
        ("testNumberCanBeValid", testNumberCanBeValid),
        ("testNumberCanBeInvalid", testNumberCanBeInvalid),
    ]
}
