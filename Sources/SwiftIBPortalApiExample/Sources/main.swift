//
//  File.swift
//  
//
//  Created by piotrg on 12/01/2021.
//

import Foundation
import SwiftIBPortalApi

let apiClient = APIClient(baseURL: "https://localhost:5000/v1/portal")
let request = IBPortalApi.Session.GetSsoValidate.Request()
apiClient.makeRequest(request) { response in
    switch response.result {
    case .failure(let error):
        print(error)
    case .success(let responseValue):
        switch responseValue {
        case .status200(let succes):
            print(succes)
        case .status401:
            print("It was a 401")
        case .status500:
            print("It was a 500")
        }
    }
}

RunLoop.main.run()
