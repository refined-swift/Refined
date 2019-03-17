import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RefinedTests.allTests),
        testCase(PredicateTests.allTests),
    ]
}
#endif
