//
//  MyReservationScreen.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//

import XCTest

class MyReservationScreen: BaseScreen {
    let youDidNotLoginAlert = app.alerts["You did not login"]
    
    required init() {
        super.init()
        visible()
    }
    
}

extension MyReservationScreen {
    func visible() {
        guard youDidNotLoginAlert.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("Table screen is not presented")
            return
        }
    }
}
