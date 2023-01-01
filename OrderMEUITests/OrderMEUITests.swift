//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Igor Dorovskikh on 2/9/21.
//  Copyright © 2021 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: BaseTest {

    override func tearDownWithError() throws {
    }
    
    func testCallRestaurant() throws {
        let getAlert = LoginScreen()
            .tapLoginLater()
            .tapRestaurant()
            .callRestaurant()
            .callAlert
        
        XCTAssert(getAlert.waitForExistence(timeout: visibleTimeout), "Alert is not present")
    }
    
    func testReservationTable() throws {
        let gotAlert = LoginScreen()
            .tapLoginLater()
            .tapRestaurant()
            .tapDetectTable()
            .selectAndEnterTable()
            .tapSelectTable()
            .tapCallAWaiter()
            .tapBringMenu()
            .gotAlert
            
        XCTAssert(gotAlert.waitForExistence(timeout: visibleTimeout), "Alert is not present")
    }
    
    func testVerifyTabBar() throws {
        let gotAlert = LoginScreen()
            .tapLoginLater()
            .tapReservationItem()
            .youDidNotLoginAlert
        
        XCTAssert(gotAlert.waitForExistence(timeout: visibleTimeout), "Alert is not present")
    }
    
    func testVerifyBackNavigationFromRestaurantScreen() {
        let gotAlert = LoginScreen()
            .tapLoginLater()
            .tapRestaurant()
            .backTo(screen: RestaurantsScreen.self)
    }
}
