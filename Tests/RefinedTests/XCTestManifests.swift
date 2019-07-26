import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PredicateTests.allTests),
        testCase(RefinedTests.allTests),
        
        testCase(LetterTests.allTests),
        testCase(LowercaseTests.allTests),
        testCase(NumberTests.allTests),
        testCase(UppercaseTests.allTests),
        testCase(WhitespaceTests.allTests),
        
        testCase(CountTests.allTests),
        testCase(EmptyTests.allTests),
        
        testCase(NotTests.allTests),
        testCase(AndTests.allTests),
        testCase(OrTests.allTests),
    ]
}
#endif
