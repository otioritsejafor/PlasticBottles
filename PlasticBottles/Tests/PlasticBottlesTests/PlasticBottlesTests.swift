import XCTest
@testable import PlasticBottles

final class PlasticBottlesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PlasticBottles().text, "Hello, World!")
    }
    
    func testCreateHexColor() {
        let color = UIColor(hexString: "FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
