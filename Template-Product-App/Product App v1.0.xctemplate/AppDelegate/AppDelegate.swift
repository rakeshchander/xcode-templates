//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  ___COPYRIGHT___
//

import UIKit
import Crashlytics
import Firebase
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
            window = UIWindow(frame: UIScreen.main.bounds)
            
            IQKeyboardManager.shared.enable = true
            IQKeyboardManager.shared.shouldResignOnTouchOutside = true
            
            if !isRunningUnitTests() {
                let filePath = EndpointURL.crashlyticFilePath
                let options = FirebaseOptions(contentsOfFile: filePath)
                guard let firOptions = options else{
                    FirebaseApp.configure()
                    return true
                }
                FirebaseApp.configure(options: firOptions)
            }
            Router.sharedInstance.launchApp()
            return true
            
        }
        
        func isRunningUnitTests() -> Bool {
            
            if ProcessInfo.processInfo.environment[Constants.runningUIIdentifier] == Constants.runningUIIdentifierValue {
                UIView.setAnimationsEnabled(false)
            }
            
            
            let env = ProcessInfo.processInfo.environment
            if env[Constants.runningUnitTestsIdentifier] != nil {
                return true
            }
            return false
        }
    
}

