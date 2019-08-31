import XCTest
import Refined

final class RefinedTests: XCTestCase {
    func testRefinedThrowingInitCanSucceed() {
        XCTAssertNoThrow(try Refined<IsTruePredicate>(refining: true))
    }

    func testRefinedThrowingInitCanThrow() {
        XCTAssertThrowsError(try Refined<IsTruePredicate>(refining: false))
    }

    func testRefinedFailableInitCanSucceed() {
        XCTAssertNotNil(Refined<IsTruePredicate>(true))
    }

    func testRefinedFailableInitCanFail() {
        XCTAssertNil(Refined<IsTruePredicate>(false))
    }

    func testRefinedRetrievesCorrectValue() {
        let validValue = true
        XCTAssertEqual(Refined<IsTruePredicate>(validValue)?.wrapped, validValue)
    }

    static var allTests = [
        ("testRefinedThrowingInitCanSucceed", testRefinedThrowingInitCanSucceed),
        ("testRefinedThrowingInitCanThrow", testRefinedThrowingInitCanThrow),
        ("testRefinedFailableInitCanSucceed", testRefinedFailableInitCanSucceed),
        ("testRefinedFailableInitCanFail", testRefinedFailableInitCanFail),
        ("testRefinedRetrievesCorrectValue", testRefinedRetrievesCorrectValue),
    ]
}
