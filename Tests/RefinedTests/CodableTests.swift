import XCTest
@testable import Refined

final class CodableTests: XCTestCase {
    func test() {
        struct Int_20: PredicateInt {}
        struct Double_100: PredicateDouble {}
        struct Double_1000: PredicateDouble {}
        
        struct Photo: Codable {
            var title: Refined<Count<String, LessThan<Int_20>>>
            var size: Size
        }

        struct Size: Codable {
            var height: Refined<RangeOf<Double_100, Double_1000>>
            var width: Refined<RangeOf<Double_100, Double_1000>>
        }

        let jsonString = """
            {
                "size":{
                    "width":150,
                    "height":150
                },
                "title":"Apple"
            }
        """
        let jsonData = jsonString.data(using: .utf8)!
        let photo = try? JSONDecoder().decode(Photo.self, from: jsonData)
        XCTAssertEqual(photo?.title, "Apple")
        XCTAssertEqual(photo?.size.width, 150)
        XCTAssertEqual(photo?.size.height, 150)
        XCTAssertNotNil(photo?.size)
        // FIXME: XCTAssertNotNil(photo)
    }

    static var allTests = [
        ("test", test),
    ]
}
