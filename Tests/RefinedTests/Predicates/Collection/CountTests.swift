import XCTest
import Refined

final class CountTests: XCTestCase {
    func testCountCanBeValid() {
        XCTAssertNotNil(Refined<Count<String, Four>>("four"))
        XCTAssertNotNil(String.Count<Four>.or.Empty("four"))
        XCTAssertNotNil(String.Count<Four>.or.Empty("four"))
    }

    func testCountCanBeInvalid() {
        XCTAssertNil(Refined<Count<String, Three>>("three"))
        XCTAssertNil(String.Empty.or.Count<Three>("three"))
        XCTAssertNil(String.Empty.or.Count<Greater<Three>>("one"))
    }

    static var allTests = [
        ("testCountCanBeValid", testCountCanBeValid),
        ("testCountCanBeInvalid", testCountCanBeInvalid),
    ]
}
