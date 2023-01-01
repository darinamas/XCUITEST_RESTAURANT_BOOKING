//
//  TableNumberScreen.swift
//  OrderMEUITests
//
//  Created by Daryna Polevyk on 30.12.2022.
//  Copyright © 2022 Boris Gurtovoy. All rights reserved.
//
import XCTest

class TableNumberScreen: BaseScreen {
    private lazy var tableNumberField = BaseScreen.app.textFields["tableNumberTextField"]
    private lazy var selectTableBtn = BaseScreen.app.buttons["Select table"]
   
    required init() {
        super.init()
        visible()
    }
    
    public func selectAndEnterTable() -> Self {
        tap(tableNumberField)
        tableNumberField.typeText("3")
        return self
    }
    
    public func tapSelectTable() -> RestarantScreen {
        tap(selectTableBtn)
        return RestarantScreen()
    }
    
}

extension TableNumberScreen {
    func visible() {
        guard tableNumberField.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("Table screen is not presented")
            return
        }
    }
}
