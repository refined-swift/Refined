import XCTest
@testable import Refined

final class AndTests: XCTestCase {
    func testAndCanBeValid() {
        XCTAssertNotNil(Refined<And<Array<Void>.Empty, Array<Void>.Empty>>([]))
        XCTAssertNotNil(Array<Void>.Empty.And<Array<Void>.Empty>([]))
    }

    func testAndCanBeInvalid() {
        XCTAssertNil(Refined<And<Array<Void>.Empty, Array<Void>.NonEmpty>>([]))
        XCTAssertNil(Array<Void>.Empty.And<Array<Void>.NonEmpty>([]))
    }

    static var allTests = [
        ("testAndCanBeValid", testAndCanBeValid),
        ("testAndCanBeInvalid", testAndCanBeInvalid),
    ]
}
