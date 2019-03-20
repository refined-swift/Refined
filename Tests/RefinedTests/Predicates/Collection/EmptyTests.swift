import XCTest
@testable import Refined

final class EmptyTests: XCTestCase {
    func testEmptyCanBeValid() {
        XCTAssertNotNil(String.Empty(""))
    }

    func testEmptyCanBeInvalid() {
        XCTAssertNil(String.Empty("full"))
    }

    static var allTests = [
        ("testEmptyCanBeValid", testEmptyCanBeValid),
        ("testEmptyCanBeInvalid", testEmptyCanBeInvalid),
    ]
}
