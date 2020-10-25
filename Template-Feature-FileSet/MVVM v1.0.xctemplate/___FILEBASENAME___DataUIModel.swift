//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import iOS_Core_Library

/// ___VARIABLE_productName___ErrorUIModel for API Success Response Mapping to View Elements
public struct ___VARIABLE_productName___ErrorUIModel {
    /// statusCode of API Error Response
    public let statusCode : String
    
    /// statusMessage of API Error Response
    public let statusMessage: String
    
    /// constructor for ___VARIABLE_productName___ErrorUIModel
    public init(statusCode : String, statusMessage: String = String.empty) {
        self.statusCode = statusCode
        self.statusMessage = statusMessage
    }
}

/// ___VARIABLE_productName___DataUIModel for API Success Response Mapping to View Elements
public struct ___VARIABLE_productName___DataUIModel {
    //TODO - Set UI consumable variables
    //TODO - Set public init for variables
}
