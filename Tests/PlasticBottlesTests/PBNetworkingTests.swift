//
//  PBNetworkingTests.swift
//  PlasticBottlesTests
//
//  Created by Oti Oritsejafor on 10/16/20.
//

import XCTest
@testable import PlasticBottles

final class PBNetworkingTests: XCTestCase {
    
    func testLoadDataCall() {
        let manager = PlasticBottles.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://github.com/otioritsejafor") else {
            return XCTFail("Could not create URL properly")
        }
        manager.loadData(from: url) { result in
            expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "Error forming error result")
            }
        }
        wait(for: [expectation], timeout: 5)
    }
    
    static var allTests = [
        ("testLoadDataCall", testLoadDataCall)
    ]

}
