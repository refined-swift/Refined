import XCTest
@testable import Refined

final class NotTests: XCTestCase {
    func testNonEmptyUsesNot() {
        XCTAssertTrue((String.NonEmpty.self as Any.Type) is Refined<Not<Empty<String>>>.Type)
    }

    func testNotCanBeValid() {
        XCTAssertNotNil(Array<Void>.NonEmpty([Void()]))
        XCTAssertNotNil(Array<Void>.Empty.Not([Void()]))
    }

    func testNotCanBeInvalid() {
        XCTAssertNil(Array<Void>.NonEmpty([]))
        XCTAssertNil(Array<Void>.Empty.Not([]))
    }

    static var allTests = [
        ("testNonEmptyUsesNot", testNonEmptyUsesNot),
        ("testNotCanBeValid", testNotCanBeValid),
        ("testNotCanBeInvalid", testNotCanBeInvalid),
    ]
}
