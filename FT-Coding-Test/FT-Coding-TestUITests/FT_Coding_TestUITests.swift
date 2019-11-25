//
//  FT_Coding_TestUITests.swift
//  FT-Coding-TestUITests
//
//  Created by Sridhar Agrawal on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//

import XCTest

class FT_Coding_TestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Ritual app for ending the work day inspired by Deep Work"]/*[[".cells.staticTexts[\"Ritual app for ending the work day inspired by Deep Work\"]",".staticTexts[\"Ritual app for ending the work day inspired by Deep Work\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Maslow-kits-Pre-Order-"]/*[[".cells.staticTexts[\"Maslow-kits-Pre-Order-\"]",".staticTexts[\"Maslow-kits-Pre-Order-\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["🐭 An In-browser User Interface For JavaScript Development Workflows"]/*[[".cells.staticTexts[\"🐭 An In-browser User Interface For JavaScript Development Workflows\"]",".staticTexts[\"🐭 An In-browser User Interface For JavaScript Development Workflows\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["The open-source database for the realtime web."]/*[[".cells.staticTexts[\"The open-source database for the realtime web.\"]",".staticTexts[\"The open-source database for the realtime web.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
