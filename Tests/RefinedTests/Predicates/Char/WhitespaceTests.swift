import XCTest
import Refined

final class WhitespaceTests: XCTestCase {
    func testNonWhitespaceUsesNot() {
        XCTAssertTrue((Character.NonWhitespace.self as Any.Type) is Refined<Not<Whitespace<Character>>>.Type)
    }

    func testWhitespaceCanBeValid() {
        XCTAssertNotNil(Character.Whitespace(" "))
    }

    func testWhitespaceCanBeInvalid() {
        XCTAssertNil(Character.Whitespace("0"))
    }

    static var allTests = [
        ("testNonWhitespaceUsesNot", testNonWhitespaceUsesNot),
        ("testWhitespaceCanBeValid", testWhitespaceCanBeValid),
        ("testWhitespaceCanBeInvalid", testWhitespaceCanBeInvalid),
    ]
}
