//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

/// ___VARIABLE_productName___ViewController
public class ___VARIABLE_productName___ViewController: UIViewController {

    /// This refers to ___VARIABLE_productName___ViewModel consumed by ___VARIABLE_productName___ViewController
    public var viewModel : ___VARIABLE_productName___ViewModel?

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.start___VARIABLE_productName___Action()
    }
    
    /// start___VARIABLE_productName___Action initiates API request
    public func start___VARIABLE_productName___Action() {
        self.viewModel?.perform___VARIABLE_productName___Action()
    }

}

/// ___VARIABLE_productName___ViewController implements ___VARIABLE_productName___FlowDelegate
extension ___VARIABLE_productName___ViewController : ___VARIABLE_productName___FlowDelegate {
    
    /// ___VARIABLE_productName___FlowDelegate error delegate method implementation
    public func action___VARIABLE_productName___Failed(error : ___VARIABLE_productName___ErrorUIModel){
        
    }
    
    /// ___VARIABLE_productName___FlowDelegate success delegate method implementation
    public func action___VARIABLE_productName___Successful(data : ___VARIABLE_productName___DataUIModel){
        
    }
}
