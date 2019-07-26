import XCTest
import Refined

final class PredicateTests: XCTestCase {
    func testCheckValueHasDefaultImplementation() {
        XCTAssertNoThrow(try IsTruePredicate.checkValue(true))
    }

    func testCheckValueDefaultImplementationThrowsIfNotValid() {
        XCTAssertThrowsError(try IsTruePredicate.checkValue(false))
    }

    static var allTests = [
        ("testCheckValueHasDefaultImplementation", testCheckValueHasDefaultImplementation),
        ("testCheckValueDefaultImplementationThrowsIfNotValid", testCheckValueDefaultImplementationThrowsIfNotValid),
    ]
}
