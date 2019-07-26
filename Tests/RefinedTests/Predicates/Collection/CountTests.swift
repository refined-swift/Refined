import XCTest
@testable import Refined

final class CountTests: XCTestCase {
    func testCountCanBeValid() {
        struct Four: PredicateInt { static let value = 4 }
        XCTAssertNotNil(Refined<Count<String, Four>>("four"))
        XCTAssertNotNil(String.Count<Four>.Or.Empty("four"))
    }

    func testCountCanBeInvalid() {
        struct Three: PredicateInt { static let value = 3 }
        XCTAssertNil(Refined<Count<String, Three>>("three"))
        XCTAssertNil(String.Count<Three>.Or.Empty("three"))
    }

    static var allTests = [
        ("testCountCanBeValid", testCountCanBeValid),
        ("testCountCanBeInvalid", testCountCanBeInvalid),
    ]
}
