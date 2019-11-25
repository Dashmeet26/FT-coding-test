//
//  FT_Coding_TestTests.swift
//  FT-Coding-TestTests
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//

import XCTest
@testable import FT_Coding_Test

class FT_Coding_TestTests: XCTestCase {
    
    var viewControllerUnderTest = TrendingViewController()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.viewControllerUnderTest.loadView()
        self.viewControllerUnderTest.viewDidLoad()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }

    //Mark :- test case to test whether viewcontroller has a tableview created via code
    func testHasATableView() {
        XCTAssertNotNil(viewControllerUnderTest.tableView)
    }

    //Mark :- test case to test whether viewcontroller conforms to tableView delegate
    func testTableViewConfromsToTableViewDelegateProtocol() {
        XCTAssertTrue(viewControllerUnderTest.conforms(to: UITableViewDelegate.self))
    }

    //Mark :- test case to test whether viewcontroller conforms to tableView datasource
    func testTableViewConformsToTableViewDataSourceProtocol() {
           XCTAssertTrue(viewControllerUnderTest.conforms(to: UITableViewDataSource.self))
           //XCTAssertTrue(viewControllerUnderTest.responds(to: #selector(viewControllerUnderTest.numberOfSections(in:))))
           XCTAssertTrue(viewControllerUnderTest.responds(to: #selector(viewControllerUnderTest.tableView(_:numberOfRowsInSection:))))
           XCTAssertTrue(viewControllerUnderTest.responds(to: #selector(viewControllerUnderTest.tableView(_:cellForRowAt:))))
       }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
