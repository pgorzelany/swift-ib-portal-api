# SwiftIBPortalApi

An unofficial Swift API client for the InteractiveBrokers Portal API.

## Contribute

Please try the api client and create issues on Github if you see any errors. Please also submit improvement requests and I will work on them.

## Overview

The unofficial Swift API client library for Interactive Broker Client Portal Web API allows individuals with Interactive Broker accounts to manage trades, pull historical and real-time data, manage their accounts, create and modify orders all using the Swift programming language.

## Setup Requirements

Before making requests through the api you need to authenticate and make a connection through the IB Gatewayas describe in the [getting started section of the docs](https://interactivebrokers.github.io/cpwebapi/). You can use an IB demo account to try out the api.

## API Documentation and Resources

- [Getting Started](https://interactivebrokers.github.io/cpwebapi/index.html#login)
- [Endpoints](https://interactivebrokers.com/api/doc.html)
- [Websockets](https://interactivebrokers.github.io/cpwebapi/RealtimeSubscription.html)

## Client Documentation

Check out the [detailed documentation](/Sources/SwiftIBPortalApi/Swagger3CorrectedGenerated/README.md) for the api client.

## Example usage

If you want to play with the api client check out the SwiftIBPortalApiExample target in the Swift package.

```
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
```
