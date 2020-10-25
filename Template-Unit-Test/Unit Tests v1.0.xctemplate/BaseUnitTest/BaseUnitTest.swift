//
//  BaseUnitTest.swift
//
//  Created by Rakesh Chander

import XCTest

class BaseUnitTest: XCTestCase {

    override func setUp() {
        continueAfterFailure = true
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func wait(interval: TimeInterval = 2, completion: @escaping (() -> Void)) {
        let exp = expectation(description: "")
        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
            completion()
            exp.fulfill()
        }
        waitForExpectations(timeout: interval + 1) 
    }
    
    func loadVC(targetVC : UIViewController){
        let targetView = targetVC.view!
        
        let appDlgt = UIApplication.shared.delegate
        appDlgt?.window??.rootViewController = targetVC
        appDlgt?.window??.addSubview(targetView)
        appDlgt?.window??.makeKeyAndVisible()
    }


}
