import XCTest
@testable import Refined

final class OrTests: XCTestCase {
    func testOrCanBeValid() {
        XCTAssertNotNil(Refined<Or<Array<Void>.Empty, Array<Void>.NonEmpty>>([]))
        XCTAssertNotNil(Array<Void>.Empty.Or.NonEmpty([]))
    }

    func testOrCanBeInvalid() {
        XCTAssertNil(Refined<Or<Array<Void>.NonEmpty, Array<Void>.NonEmpty>>([]))
        struct One: PredicateInt { static let value = 1 }
        XCTAssertNil(Array<Void>.NonEmpty.Or.Count<One>([]))
    }

    static var allTests = [
        ("testOrCanBeValid", testOrCanBeValid),
        ("testOrCanBeInvalid", testOrCanBeInvalid),
    ]
}
