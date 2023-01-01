//
//  LoginScreen.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    private lazy var loginLaterButton = BaseScreen.app.buttons["loginLaterButton"]
   
    required init() {
        super.init()
        visible()
    }
    
    public func tapLoginLater() -> RestaurantsScreen{
      tap(loginLaterButton)
       return RestaurantsScreen()
    }
}

extension LoginScreen {
    func visible() {
        guard loginLaterButton.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("Login screen is not presented")
            return
        }
    }
}
