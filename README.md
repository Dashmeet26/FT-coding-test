# FT-coding-test
FT mobile coding test

#Requirements
iOS 10+

#Repository 
https://github.com/Dashmeet26/FT-coding-test.git

#Branch Names
1. Master
2. feature/starred_repo


#About Project
1. The application contains a tab bar view with two tabs. The main tab displays the top 30 trending repositories of Github and the second tab is settings view which is not implemented yet. The table view cells are self sizing i.e it adjusts according to the contents of the cell. The pagination feature is not implemented in this build, it will get implemented in next build.
2. The application code structure follows MVVM design pattern viz. it has model class (TrendingRepoModel.swift), viewModel class (ViewManager.swift), view controller class (TrendingViewController.swift) and view (Main.storyboard). Moreover it has separate delegate and extension folders.
3. The application uses Alamofire library for handling HTTP network handling, SDWebImage for image caching, Reachability for internet connection check and MBProgressHUD for interactive progress views.

#How to run
1. Downlaod the code from the feature/starred_repo of repository (https://github.com/Dashmeet26/FT-coding-test.git).
2. CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. There is a podfile in the project folder which contains the pods for all 4 dependencies used in this application. Navigate to your project folder directory in terminal and run the following command pod install.
3.  After successful installation of pods, double click on FT-Coding-Test.xcworkspace file in your project folder to launch the project.
4. After launching the project on Xcode then you can run the app on simulator or device.

#XCTest case
1. The project contains a class FT_Coding_TestTests.swift which contains test case for trending table view which checks for scenarios like whether the viewcontroller conforms to UITableViewDelegate and UITableViewDataSourece or not and whether the tableview is initialised or not.
2. To run the test cases click on play button present on left hand side of class FT_Coding_TestTests: XCTestCase line or you can run each test case individually by clicking on the play button on left side of method name.
3. I have added few test cases which will intentionally fail.

#XCUITest case
1. The project contains a class FT_Coding_TestUITests.swift which contains UI test case for trending table view which test the scrolling of table view and tab bar navigation.
2. To run the test cases click on play button present on left hand side of class FT_Coding_TestUITests: XCTestCase  line or you can run each test case individually by clicking on the play button on left side of method name.
3.  I have added few test cases which will intentionally fail.





