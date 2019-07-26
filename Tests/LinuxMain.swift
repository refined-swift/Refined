import XCTest

import RefinedTests

var tests = [XCTestCaseEntry]()

tests += RefinedTests.allTests()
tests += CountTests.allTests()
tests += EmptyTests.allTests()
tests += NotTests.allTests()
tests += AndTests.allTests()
tests += OrTests.allTests()

XCTMain(tests)
