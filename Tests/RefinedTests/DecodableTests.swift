import XCTest
import Refined

final class DecodableTests: XCTestCase {
    func testDecodingJsonWorks() {
        let data = "{\"foo\": \"foo\"}".data(using: .utf8)!
        let foo = try? JSONDecoder().decode(Foo.self, from: data)
        XCTAssertNotNil(foo)
        XCTAssertEqual(foo?.foo.wrapped, "foo")
        // FIXME: unsupported: XCTAssertTrue(foo?.foo == "foo")
    }

    static var allTests = [
        ("testDecodingJsonWorks", testDecodingJsonWorks),
    ]
}
