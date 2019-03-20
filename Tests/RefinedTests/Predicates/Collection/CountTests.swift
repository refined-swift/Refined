import XCTest
@testable import Refined

final class CountTests: XCTestCase {
    func testCountCanBeValid() {
        struct Four: PredicateInt { static let value = 4 }
        XCTAssertNotNil(Refined<Count<String, Four>>("four"))
    }

    func testCountCanBeInvalid() {
        struct Three: PredicateInt { static let value = 3 }
        XCTAssertNil(Refined<Count<String, Three>>("three"))
    }

    static var allTests = [
        ("testCountCanBeValid", testCountCanBeValid),
        ("testCountCanBeInvalid", testCountCanBeInvalid),
    ]
}
