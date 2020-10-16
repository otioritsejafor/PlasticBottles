import XCTest
@testable import PlasticBottles

final class PBColorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(PlasticBottles().text, "Hello, World!")
    }
    
    func testCreateHexColor() {
        let color = Bottles.Color.hexColor("#FF0000")
        //let color = Bottles(//UIColor(hexString: "FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testSoothingBreezeColor() {
        let color = Bottles.Color.hexColor("#b2bec3")
        XCTAssertEqual(color, Bottles.Color.soothingBreeze)
    }
    
    

    static var allTests = [
        ("testCreateHexColor", testCreateHexColor),
        ("testSoothingBreeze", testSoothingBreezeColor)
    ]
}
