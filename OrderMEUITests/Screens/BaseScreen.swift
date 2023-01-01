//
//  BaseScreen.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseScreen {
    static let app = XCUIApplication()
    static let springBoard: XCUIApplication = .init(bundleIdentifier: "com.apple.springboard") //for Alarm handling
    
    let visibleTimeout: TimeInterval = 2
    
    required init() { }
    
    func tap(_ element: XCUIElement) {
        guard element.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("\(element.description) is not visible")
            return
        }
        element.tap()
    }
}
