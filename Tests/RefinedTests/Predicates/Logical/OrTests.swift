import XCTest
@testable import Refined

final class OrTests: XCTestCase {
    func testOrCanBeValid() {
        XCTAssertNotNil(Refined<Or<Array<Void>.Empty, Array<Void>.NonEmpty>>([]))
        XCTAssertNotNil(Array<Void>.Empty.Or<Array<Void>.NonEmpty>([]))
    }

    func testOrCanBeInvalid() {
        XCTAssertNil(Refined<Or<Array<Void>.NonEmpty, Array<Void>.NonEmpty>>([]))
        XCTAssertNil(Array<Void>.NonEmpty.Or<Array<Void>.NonEmpty>([]))
    }

    static var allTests = [
        ("testOrCanBeValid", testOrCanBeValid),
        ("testOrCanBeInvalid", testOrCanBeInvalid),
    ]
}
