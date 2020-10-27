//
//  UIViewExtensionsTests.swift
//  PlasticBottlesTests
//
//  Created by Oti Oritsejafor on 10/27/20.
//

@testable import PlasticBottles
import XCTest

#if canImport(UIKit) && !os(watchOS)
import UIKit


class UIViewExtensionsTests: XCTestCase {
    func testCenterXAnchor() {
        let superView = UIView()
        let childView = UIView()
        superView.addSubview(childView)
        childView.centerX(inView: superView)
        XCTAssertNotNil(childView.centerXAnchor)
    }
    
    func testCenterYAnchor() {
        let superView = UIView()
        let childView = UIView()
        superView.addSubview(childView)
        childView.centerY(inView: superView)
        XCTAssertNotNil(childView.centerYAnchor)
    }
    
    static var allTests = [
        ("testCenterXAnchor", testCenterXAnchor),
        ("testCenterYAnchor", testCenterYAnchor)
    ]
}

#endif

