//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RCNetworkClient

/// ___VARIABLE_productName___FlowDelegate for ___VARIABLE_productName___ feature
public protocol ___VARIABLE_productName___FlowDelegate: AnyObject {
    func action___VARIABLE_productName___Failed(error : ___VARIABLE_productName___ErrorUIModel)
    func action___VARIABLE_productName___Successful(data : ___VARIABLE_productName___DataUIModel)
}

/// ___VARIABLE_productName___ViewModel for ___VARIABLE_productName___ feature
public class ___VARIABLE_productName___ViewModel {
    
    let dataSource: ___VARIABLE_productName___DataSource
    weak var delegate: ___VARIABLE_productName___FlowDelegate?
    
    init(delegate: ___VARIABLE_productName___FlowDelegate?, dataSource: ___VARIABLE_productName___DataSource) {
        self.dataSource = dataSource
        self.delegate = delegate
    }
    
    /// perform___VARIABLE_productName___Action for executing API for feature
    public func perform___VARIABLE_productName___Action() {
          
        let requestBody = ___VARIABLE_productName___RequestModel.init()
    
        self.dataSource.call___VARIABLE_productName___API(body: requestBody, successCallBack: { [weak self] (response) in
            self?.delegate?.action___VARIABLE_productName___Successful(data: ___VARIABLE_productName___DataUIModel.init())
           }) { [weak self] (error)  in
            if let err = error as? ___VARIABLE_productName___ErrorResponseModel {
                   
               } else if let err = error as? APITimeError {
               
                let errorModel = ___VARIABLE_productName___ErrorUIModel.init(statusCode : err.errorCodeInResponse, statusMessage: err.localizedDescription)
                self?.delegate?.action___VARIABLE_productName___Failed(error : errorModel)
        
               } else {
                let errorModel = ___VARIABLE_productName___ErrorUIModel.init(statusCode : String.empty)
                self?.delegate?.action___VARIABLE_productName___Failed(error : errorModel)
               }
           }
       }
    
}
