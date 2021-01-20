//
//  File.swift
//  
//
//  Created by piotrg on 12/01/2021.
//

import Foundation
import SwiftIBPortalApi

let apiClient = APIClient(baseURL: "https://localhost:5000/v1/portal")
let ssoValidateRequest = IBPortalApi.Session.GetSsoValidate.Request()

// Example with full response
apiClient.makeRequest(ssoValidateRequest) { response in
    switch response.result {
    case .failure(let error):
        // The request failed or response contained an undocumented status code
        print(error)
    case .success(let responseValue):
        // responseValue is an enumaration of all docuemented response types, also includes error responses
        switch responseValue {
        case .status200(let succes):
            print(succes)
            print("Hello \(succes.userName)")
        case .status401:
            print("It was a 401")
        case .status500:
            print("It was a 500")
        }
    }
}

// Example of request where we only want the success value and everything else is an error
apiClient.makeDecodableRequest(ssoValidateRequest) { result in
    switch result {
    case .failure(let error):
        print("Request failed: \(error)")
    case .success(let success):
        print(success)
        print("Hello \(success.userName)")
    }
}

RunLoop.main.run()
