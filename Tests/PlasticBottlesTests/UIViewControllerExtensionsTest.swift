//
//  UIViewExtensionsTest.swift
//  PlasticBottlesTests
//
//  Created by Oti Oritsejafor on 10/27/20.
//
@testable import PlasticBottles
import XCTest

#if canImport(UIKit) && !os(watchOS)
import UIKit

class UIViewControllerExtensionsTest: XCTestCase {
    
    func testShowSimpleAlert() {
        let viewController = UIViewController()
        let title = "Test Title"
        let message = "Test Message"
        let dismissal = "ALRIGHT"
        
        let alertController = viewController.showSimpleAlert(title: title, message: message, dismiss: dismissal)
        XCTAssertEqual(alertController.preferredStyle, .alert)
        XCTAssertEqual(alertController.title, title)
        XCTAssertEqual(alertController.message, message)
        XCTAssertEqual(alertController.actions.first?.title, dismissal)
        
    }
    
    static var allTests = [
        ("testShowSimpleAlert", testShowSimpleAlert)
    ]

}

#endif
