//
//  TabBarProtocol.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol TabBarProtocol {
    func tapHome() -> RestaurantsScreen
    func tapReservationItem() -> MyReservationScreen
    func tapMyOrder()
}

extension TabBarProtocol {
    func tapHome() -> RestaurantsScreen {
        XCUIApplication().tabBars["Tab Bar"].buttons["Home"].tap()
        return RestaurantsScreen()
    }
    
    func tapReservationItem() -> MyReservationScreen {
        XCUIApplication().tabBars["Tab Bar"].buttons["My reservations"].tap()
        return MyReservationScreen()
    }
    func tapMyOrder() {
        XCUIApplication().tabBars["Tab Bar"].buttons["My orders"].tap()
  
    }

}
