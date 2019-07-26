import XCTest
import Refined

final class LowercaseTests: XCTestCase {
    func testNonLowercaseUsesNot() {
        XCTAssertTrue((Character.NonLowercase.self as Any.Type) is Refined<Not<Lowercase<Character>>>.Type)
    }

    func testLowercaseCanBeValid() {
        XCTAssertNotNil(Character.Lowercase("a"))
    }

    func testLowercaseCanBeInvalid() {
        XCTAssertNil(Character.Lowercase("A"))
    }

    static var allTests = [
        ("testNonLowercaseUsesNot", testNonLowercaseUsesNot),
        ("testLowercaseCanBeValid", testLowercaseCanBeValid),
        ("testLowercaseCanBeInvalid", testLowercaseCanBeInvalid),
    ]
}
