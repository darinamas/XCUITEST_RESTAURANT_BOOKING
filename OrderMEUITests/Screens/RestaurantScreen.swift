//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//

import XCTest

enum RestaurantOptions {
    case tapDetectTable
    case callRestaurant
    case tapCallAWaiter
    case tapBringMenu
}

class RestarantScreen: BaseScreen, BackProtocol {
    private lazy var callResrOption = BaseScreen.app.collectionViews.staticTexts["5555555"]
    private lazy var detectTable = BaseScreen.app.collectionViews.staticTexts["Detect table"]
    let callAlert = app.alerts["Call Burger"]
    private lazy var callAwaiterOption = BaseScreen.app.collectionViews.staticTexts["Call a waiter"]
    
    let waiterAlertBringMenuBtn = app.alerts["The waiter is on his way"].buttons["Bring a menu"]
    
    let gotAlert = app.alerts["Got it!"]
  
    required init() {
        super.init()
        visible()
    }
    
    public func choose(option: RestaurantOptions) -> AnyObject {
        switch option {
        case .tapDetectTable: detectTable.tap()
            return TableNumberScreen()
        case .callRestaurant:
            callResrOption.tap()
           return self
        case .tapCallAWaiter:
            callAwaiterOption.tap()
           return self
        case .tapBringMenu:
            waiterAlertBringMenuBtn.tap()
           return self
        }
    }
    
    public func tapDetectTable() -> TableNumberScreen {
     tap(detectTable)
       return TableNumberScreen()
    }
    
    public func callRestaurant() -> Self {
       tap(callResrOption)
       return self
    }
    
    public func tapCallAWaiter() -> Self {
        tap(callAwaiterOption)
       return self
    }
    
    public func tapBringMenu() -> Self {
        tap(waiterAlertBringMenuBtn)
       return self
    }
}

extension RestarantScreen {
    func visible() {
        guard callResrOption.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("Restaurant screen is not presented")
            return
        }
    }
}
