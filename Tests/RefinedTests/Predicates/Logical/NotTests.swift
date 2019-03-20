import XCTest
@testable import Refined

final class NotTests: XCTestCase {
    func testNonEmptyUsesNot() {
        XCTAssertTrue((String.NonEmpty.self as Any.Type) is Refined<Not<Empty<String>>>.Type)
    }

    func testNotCanBeValid() {
        XCTAssertNotNil(Array<Void>.NonEmpty([Void()]))
    }

    func testNotCanBeInvalid() {
        XCTAssertNil(Array<Void>.NonEmpty([]))
    }

    static var allTests = [
        ("testNonEmptyUsesNot", testNonEmptyUsesNot),
        ("testNotCanBeValid", testNotCanBeValid),
        ("testNotCanBeInvalid", testNotCanBeInvalid),
    ]
}
