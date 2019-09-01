import XCTest
import Refined

final class AndTests: XCTestCase {
    func testAndCanBeValid() {
        XCTAssertNotNil(Refined<And<Array<Void>.Empty, Array<Void>.Empty>>([]))
        XCTAssertNotNil(Array<Void>.Empty.and.Empty([]))
    }

    func testAndCanBeInvalid() {
        XCTAssertNil(Refined<And<Array<Void>.Empty, Array<Void>.NonEmpty>>([]))
        XCTAssertNil(Array<Void>.NonEmpty.and.Empty([]))
    }

    static var allTests = [
        ("testAndCanBeValid", testAndCanBeValid),
        ("testAndCanBeInvalid", testAndCanBeInvalid),
    ]
}
