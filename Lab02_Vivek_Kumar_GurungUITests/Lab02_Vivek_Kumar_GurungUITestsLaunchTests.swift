//
//  Lab02_Vivek_Kumar_GurungUITestsLaunchTests.swift
//  Lab02_Vivek_Kumar_GurungUITests
//
//  Created by Vivek Kumar Gurung on 2024-05-27.
//

import XCTest

final class Lab02_Vivek_Kumar_GurungUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
