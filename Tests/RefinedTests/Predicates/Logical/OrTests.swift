import XCTest
import Refined

final class OrTests: XCTestCase {
    func testOrCanBeValid() {
        XCTAssertNotNil(Refined<Or<Array<Void>.Empty, Array<Void>.NonEmpty>>([]))
        XCTAssertNotNil(Array<Void>.Empty.Or.NonEmpty([]))
        XCTAssertNotNil(Array<Void>.NonEmpty.Or.Count<One>([Void()]))
    }

    func testOrCanBeInvalid() {
        XCTAssertNil(Refined<Or<Array<Void>.Empty._Not, Array<Void>.NonEmpty>>([]))
        XCTAssertNil(Array<Void>.NonEmpty.Or.Count<One>([]))
    }

    static var allTests = [
        ("testOrCanBeValid", testOrCanBeValid),
        ("testOrCanBeInvalid", testOrCanBeInvalid),
    ]
}
