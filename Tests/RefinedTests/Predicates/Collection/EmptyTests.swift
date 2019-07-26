import XCTest
@testable import Refined

final class EmptyTests: XCTestCase {
    func testNonEmptyUsesNot() {
        XCTAssertTrue((String.NonEmpty.self as Any.Type) is Refined<Not<Empty<String>>>.Type)
    }

    func testEmptyCanBeValid() {
        XCTAssertNotNil(String.Empty(""))
    }

    func testEmptyCanBeInvalid() {
        XCTAssertNil(String.Empty("full"))
    }

    static var allTests = [
        ("testNonEmptyUsesNot", testNonEmptyUsesNot),
        ("testEmptyCanBeValid", testEmptyCanBeValid),
        ("testEmptyCanBeInvalid", testEmptyCanBeInvalid),
    ]
}
