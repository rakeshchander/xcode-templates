//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  ___COPYRIGHT___
//

import UIKit
import Foundation

class Router {

    private static var instance: Router?
    private var baseNavigationVC: UINavigationController?

    static let sharedInstance = Router()

    func launchApp() {
        //TODO - start app first screen here
    }

    func getNavigationStack() -> UINavigationController {
        guard let navC = self.baseNavigationVC else {
            // swiftlint:disable:next no_fatal_errors
            fatalError(Constants.navigationHierarchyError)
        }
        return navC
    }

    func resetRoot(to new: UIViewController) {

        let rootVC = UINavigationController(rootViewController: new)
        rootVC.navigationBar.isHidden = true

        let appDlgt = UIApplication.shared.delegate

        appDlgt?.window??.rootViewController = rootVC
        appDlgt?.window??.makeKeyAndVisible()

        self.baseNavigationVC = rootVC

    }

}
