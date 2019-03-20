import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PredicateTests.allTests),
        testCase(RefinedTests.allTests),
        testCase(CountTests.allTests),
        testCase(EmptyTests.allTests),
        testCase(NotTests.allTests),
    ]
}
#endif
