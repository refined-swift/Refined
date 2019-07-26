import XCTest
@testable import Refined

final class CountTests: XCTestCase {
    func testCountCanBeValid() {
        XCTAssertNotNil(Refined<Count<String, Four>>("four"))
        XCTAssertNotNil(String.Count<Four>.Or.Empty("four"))
    }

    func testCountCanBeInvalid() {
        XCTAssertNil(Refined<Count<String, Three>>("three"))
        XCTAssertNil(String.Count<Three>.Or.Empty("three"))
    }

    static var allTests = [
        ("testCountCanBeValid", testCountCanBeValid),
        ("testCountCanBeInvalid", testCountCanBeInvalid),
    ]
}
