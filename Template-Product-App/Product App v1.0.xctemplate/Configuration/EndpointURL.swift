//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  ___COPYRIGHT___
//

import Foundation

struct EndpointURL {

    #if DEV
    // TODO Add Host URL
    //swiftlint:disable:next string_literal
    static let HostUrl = ""
    //swiftlint:disable:next string_literal force_unwrapping
    static let crashlyticFilePath: String = Bundle.main.path(forResource: "GoogleService-Info-DEV", ofType: "plist")!

    #elseif MOCK
    // TODO Add Host URL
    //swiftlint:disable:next string_literal
    static let HostUrl = ""
    //swiftlint:disable:next string_literal force_unwrapping
    static let crashlyticFilePath: String = Bundle.main.path(forResource: "GoogleService-Info-UAT", ofType: "plist")!

    #elseif UAT
    // TODO Add Host URL
    //swiftlint:disable:next string_literal
    static let HostUrl = ""
    //swiftlint:disable:next string_literal force_unwrapping
    static let crashlyticFilePath: String = Bundle.main.path(forResource: "GoogleService-Info-UAT", ofType: "plist")!

    #elseif PVG
    // TODO Add Host URL
    //swiftlint:disable:next string_literal
    static let HostUrl = ""
    //swiftlint:disable:next string_literal force_unwrapping
    static let crashlyticFilePath: String = Bundle.main.path(forResource: "GoogleService-Info-PVG", ofType: "plist")!

    #elseif PROD
    // TODO Add Host URL
    //swiftlint:disable:next string_literal
    static let HostUrl = ""
    //swiftlint:disable:next string_literal force_unwrapping
    static let crashlyticFilePath: String = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist")!
    #endif

}

