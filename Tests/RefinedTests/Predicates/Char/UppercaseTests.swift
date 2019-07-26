import XCTest
import Refined

final class UppercaseTests: XCTestCase {
    func testNonUppercaseUsesNot() {
        XCTAssertTrue((Character.NonUppercase.self as Any.Type) is Refined<Not<Uppercase<Character>>>.Type)
    }

    func testUppercaseCanBeValid() {
        XCTAssertNotNil(Character.Uppercase("A"))
    }

    func testUppercaseCanBeInvalid() {
        XCTAssertNil(Character.Uppercase("0"))
    }

    static var allTests = [
        ("testNonUppercaseUsesNot", testNonUppercaseUsesNot),
        ("testUppercaseCanBeValid", testUppercaseCanBeValid),
        ("testUppercaseCanBeInvalid", testUppercaseCanBeInvalid),
    ]
}
