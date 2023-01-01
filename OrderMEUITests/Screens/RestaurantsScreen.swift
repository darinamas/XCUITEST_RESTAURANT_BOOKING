//
//  RestaurantsScreen.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantsScreen: BaseScreen, TabBarProtocol {  
    private lazy var restTitle = BaseScreen.app.staticTexts["Burger"]
    private let allowWhileUsingAppAlert = springBoard.alerts.firstMatch.buttons["Allow While Using App"]
    
    required init() {
        super.init()
        visible()
    }
    
    func isLocationAlertVisible() -> Bool {
        return allowWhileUsingAppAlert.waitForExistence(timeout: visibleTimeout)
    }
    
    func handleLocationAlertIfNeeded() {
        if isLocationAlertVisible() {
            allowWhileUsingAppAlert.tap()
        }
    }
   
    public func tapRestaurant() -> RestarantScreen {
      tap(restTitle) 
        return RestarantScreen()
    }
}

extension RestaurantsScreen {
    func visible() {
        guard restTitle.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("Restaraunts screen is not presented")
            return
        }
    }
}
