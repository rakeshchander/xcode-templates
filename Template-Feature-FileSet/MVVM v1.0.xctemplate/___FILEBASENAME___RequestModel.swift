//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RCNetworkClient

struct ___VARIABLE_productName___API: RequestType {
    //TODO - Set context path
    var endPoint: String {
        return "<API_End_Point>"
    }
    typealias ErrorResponseType = ___VARIABLE_productName___ErrorResponseModel
    typealias ResponseType = ___VARIABLE_productName___ResponseModel
    typealias RequestBodyType = ___VARIABLE_productName___RequestModel
}

class ___VARIABLE_productName___RequestModel: Encodable {
    //TODO - Set request variables
}
