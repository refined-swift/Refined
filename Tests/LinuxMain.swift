import XCTest

import RefinedTests

var tests = [XCTestCaseEntry]()

tests += PredicateTests.allTests()
tests += RefinedTests.allTests()

tests += LetterTests.allTests()
tests += LowercaseTests.allTests()
tests += NumberTests.allTests()
tests += UppercaseTests.allTests()
tests += WhitespaceTests.allTests()

tests += CountTests.allTests()
tests += EmptyTests.allTests()

tests += NotTests.allTests()
tests += AndTests.allTests()
tests += OrTests.allTests()

XCTMain(tests)
