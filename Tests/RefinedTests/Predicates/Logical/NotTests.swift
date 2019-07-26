import XCTest
@testable import Refined

final class NotTests: XCTestCase {
    func testNotCanBeValid() {
        XCTAssertNotNil(Array<Void>.NonEmpty([Void()]))
        XCTAssertNotNil(Array<Void>.Empty._Not([Void()]))
    }

    func testNotCanBeInvalid() {
        XCTAssertNil(Array<Void>.NonEmpty([]))
        XCTAssertNil(Array<Void>.Empty._Not([]))
    }

    static var allTests = [
        ("testNotCanBeValid", testNotCanBeValid),
        ("testNotCanBeInvalid", testNotCanBeInvalid),
    ]
}
