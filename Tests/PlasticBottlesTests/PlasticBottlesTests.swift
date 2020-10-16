import XCTest
@testable import PlasticBottles

final class PlasticBottlesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(PlasticBottles().text, "Hello, World!")
    }
    
    func testCreateHexColor() {
        let color = Bottles.hexColor("#FF0000")
        //let color = Bottles(//UIColor(hexString: "FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testSoothingBreezeColor() {
        let color = Bottles.hexColor("#b2bec3")
        XCTAssertEqual(color, Bottles.soothingBreeze)
    }
    
    

    static var allTests = [
        ("testCreateHexColor", testExample),
    ]
}
