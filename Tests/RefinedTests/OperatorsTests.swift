import XCTest
import Refined
import Wrapper

final class OperatorsTests: XCTestCase {
    func testStringEqual() {
        XCTAssertEqual(String.Empty(""), String.Empty(""))
        XCTAssertTrue(String.NonEmpty("0123")! == "0123")
        XCTAssertTrue("abcd" == String.NonEmpty("abcd")!)
    }
    
    func testStringNotEqual() {
        XCTAssertNotEqual(String.NonEmpty("0123"), String.NonEmpty("abcd"))
        // FIXME: unsupported: XCTAssertTrue("abcd" != String.NonEmpty("0123")!)
        // FIXME: unsupported: XCTAssertTrue(String.NonEmpty("0123")! != "abcd")
    }
    
    func testStringConcatenation() {
        XCTAssertEqual(String.Count<One>("a")! + String.Count<One>("b")!, "ab")
        XCTAssertEqual("01" + String.NonEmpty("ab")!, "01ab")
        XCTAssertEqual(String.NonEmpty("ab")! + "01", "ab01")
    }

    func testDoubleDivision() {
        XCTAssertEqual(Double.Greater<TwoDotFive>(3)!/Double.Greater<TwoDotFive>(3)!, 1)
        XCTAssertEqual(Double.Equal<TwoDotFive>(2.5)!/0.5, 5)
        XCTAssertEqual(0.5/Double.Less<TwoDotFive>(0.5)!, 1)
    }

    func testIntMultiplication() {
        XCTAssertEqual(Int.GreaterEqual<Three>(4)!*Int.GreaterEqual<Three>(3)!, 12)
        XCTAssertEqual(Int.GreaterEqual<Three>(3)!*0, 0)
        XCTAssertEqual(1*Int.GreaterEqual<Three>(3)!, 3)
    }

    func testDoubleSubtraction() {
        XCTAssertEqual(Double.Less<TwoDotFive>(0.1)! - Double.Less<TwoDotFive>(0.2)!, -0.1)
        XCTAssertEqual(Double.Greater<TwoDotFive>(5.2)! - 0.2, 5)
        XCTAssertEqual(5 - Double.Less<TwoDotFive>(0.2)!, 4.8)
    }

    static var allTests = [
        ("testStringEqual", testStringEqual),
        ("testStringNotEqual", testStringNotEqual),
        ("testStringConcatenation", testStringConcatenation),
        ("testDoubleDivision", testDoubleDivision),
        ("testIntMultiplication", testIntMultiplication),
        ("testDoubleSubtraction", testDoubleSubtraction),
    ]
}
