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
    
    func testTabNavigation() {
              // UI tests must launch the application that they test.
               let app = XCUIApplication()
               app.launch()
           
           let tabBarsQuery = XCUIApplication().tabBars
           tabBarsQuery.buttons["Settings"].tap()
           tabBarsQuery.buttons["Trending"].tap()
       }

    func testTableViewScroll() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["faceair"].swipeRight()/*[[".cells.staticTexts[\"faceair\"]",".swipeUp()",".swipeRight()",".staticTexts[\"faceair\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"React-Redux-Styleguide")/*[[".cells.containing(.staticText, identifier:\"iraycd\")",".cells.containing(.staticText, identifier:\"This is a working set of guidelines for developing React applications. We say \\\"guideline\\\" because there are no hard-and-fast rules; best practices, patterns and technology change over time, so we consider this a living set of style guides.\")",".cells.containing(.staticText, identifier:\"React-Redux-Styleguide\")"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["5"].swipeDown()
               
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
