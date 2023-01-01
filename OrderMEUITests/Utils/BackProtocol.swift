//
//  BackProtocol.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 01.01.2023.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import Foundation

protocol BackProtocol {
  //  @discardableResult
    func backTo<T>(screen: T.Type) -> T where T: BaseScreen
}

extension BackProtocol {
  //  @discardableResult
    func backTo<T>(screen: T.Type) -> T where T: BaseScreen {
        let backButton = BaseScreen.app.buttons["BackButton"]
        backButton.tap()
        return T.init()
    }
}
