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

let handle = Task.runDetached {
    print("### 1")
    async let ssoValidateResponse = apiClient.makeRequest(request)
    print("### 2")
    let test = await try apiClient.makeRequest(request)
    async let ssoValidateResponse2 = apiClient.makeRequest(request)
    print(test)
    print("### 3")
    print(await try ssoValidateResponse.success)
    print(await try ssoValidateResponse2.success)
}

RunLoop.main.run()
