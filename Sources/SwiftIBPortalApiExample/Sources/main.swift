//
//  File.swift
//  
//
//  Created by piotrg on 12/01/2021.
//

import Foundation
import SwiftIBPortalApi

let apiClient = APIClient(baseURL: "https:google.com")
let request = IBPortalApi.Account.GetIserverAccounts.Request()
apiClient.makeRequest(request) { response in
    switch response.result {
    case .failure(let error):
        print(error)
    case .success(let responseValue):
        print(responseValue.success)
    }
}

RunLoop.main.run()
