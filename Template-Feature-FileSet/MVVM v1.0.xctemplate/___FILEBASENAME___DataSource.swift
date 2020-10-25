//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RCNetworkClient

class ___VARIABLE_productName___DataSource {
    
    private var dispatcher: NetworkDispatcher
    
    init(dispatcher: NetworkDispatcher) {
        self.dispatcher = dispatcher
    }
    
    func call___VARIABLE_productName___API(body: ___VARIABLE_productName___RequestModel, successCallBack: @escaping (___VARIABLE_productName___ResponseModel) -> Void, errorCallBack: @escaping(Decodable) -> Void) {
        
        
        ___VARIABLE_productName___API().execute(requestParams: queryParams, onSuccessResponse: { [weak self] (response) in

              // Received Success Response DAO
            successCallBack(response)

            }, onErrorResponse: { [weak self] (error) in

              // Received Error Response DAO
                errorCallBack(error)

            }) { [weak self] (error) in

              // Received Generic Error
            errorCallBack(error)

            }
    }
    
}
