//
//  URLManager.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 08/01/21.
//

import Foundation

class URLManager {
    
    static let sharedInstance = URLManager()
    
    //MARK:- Base url for app
    private let BASEURL = Bundle.main.infoDictionary?["MY_API_BASE_URL_ENDPOINT"] as? String ?? "https://en.wikipedia.org/w"

    enum APIType: String {
        case searchResults = "/api.php"
    }
    
    private func getApiPathForType(apiType : APIType,pathAppendWith : String? = nil) -> String{
        return apiType.rawValue + (pathAppendWith ?? "")
    }
    
    /// function to return the complete url
    ///
    /// - Parameters:
    ///   - apiType: enum for type of API
    ///   - pathAppendWith: some string to appened to the path
    /// - Returns: return the complete url
    public func getApiURLForType(apiType : APIType,pathAppendWith : String? = nil) -> String{
        return BASEURL + getApiPathForType(apiType: apiType, pathAppendWith: pathAppendWith)
    }
}

