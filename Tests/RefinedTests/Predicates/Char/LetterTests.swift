import XCTest
import Refined

final class LetterTests: XCTestCase {
    func testNonLetterUsesNot() {
        XCTAssertTrue((Character.NonLetter.self as Any.Type) is Refined<Not<Letter<Character>>>.Type)
    }

    func testLetterCanBeValid() {
        XCTAssertNotNil(Character.Letter("a"))
    }

    func testLetterCanBeInvalid() {
        XCTAssertNil(Character.Letter("0"))
    }

    static var allTests = [
        ("testNonLetterUsesNot", testNonLetterUsesNot),
        ("testLetterCanBeValid", testLetterCanBeValid),
        ("testLetterCanBeInvalid", testLetterCanBeInvalid),
    ]
}
