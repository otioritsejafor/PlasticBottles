//
//  PBNetworkingTests.swift
//  PlasticBottlesTests
//
//  Created by Oti Oritsejafor on 10/16/20.
//

import XCTest
@testable import PlasticBottles

class NetworkSessionMock: NetworkSession {
    var data: Data?
    var error: Error?
    
    func get(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void) {
        completionHandler(data, error)
    }
    
    func post(with request: URLRequest, completionHandler: @escaping (Data?, Error?) -> Void) {
        completionHandler(data, error)
    }
}

struct MockData: Codable, Equatable {
    var id: Int
    var name: String
}

final class PBNetworkingTests: XCTestCase {
    
    func testLoadDataCall() {
        let manager = PlasticBottles.Networking.Manager()
        let session = NetworkSessionMock()
        manager.session = session
        let expectation = XCTestExpectation(description: "Called for data")
        let data = Data([0, 1, 0, 1])
        session.data = data
        let url = URL(fileURLWithPath: "url")
        
        manager.loadData(from: url) { result in
            expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertEqual(data, returnedData, "manager returned unexpected data")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "Error forming error result")
            }
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testSendDataCall() {
        let manager = Bottles.Networking.Manager()
        let session = NetworkSessionMock()
        let testObject = MockData(id: 1, name: "Oti")
        let data = try? JSONEncoder().encode(testObject)
        session.data = data
        manager.session = session
        let url = URL(fileURLWithPath: "url")
        let expecation = XCTestExpectation(description: "Sent data")
        
        manager.sendData(to: url, body: testObject) { result in
            expecation.fulfill()
            switch result {
            case .success(let returnedData):
                let returnedObject = try? JSONDecoder().decode(MockData.self, from: returnedData)
                XCTAssertEqual(returnedObject, testObject)
                break
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "Error forming result")
            }
            
        }
        wait(for: [expecation], timeout: 5)
        
    }
    
    static var allTests = [
        ("testLoadDataCall", testLoadDataCall),
        ("testSendDataCall", testSendDataCall)
    ]

}
