//
//  TDDExUITests.swift
//  TDDExUITests
//
//  Created by Softbuilder Hibrido on 30/06/21.
//

import XCTest

class TDDExUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        app = XCUIApplication()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMyFirstFlow() {
        app.launch()
        app.buttons["myButton"].tap()
        app.textFields["myTextField"].tap()
        app.textFields["myTextField"].typeText("Ola, learning")
    }
}
