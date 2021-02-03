//
//  File.swift
//  
//
//  Created by piotrg on 12/01/2021.
//

import Foundation
import SwiftIBPortalApi

let apiClient = APIClient(baseURL: "https://localhost:5000/v1/portal")
let tickleRequest = IBPortalApi.Session.PostTickle.Request()
let ssoValidateRequest = IBPortalApi.Session.GetSsoValidate.Request()
let authStatusRequest = IBPortalApi.Session.PostIserverAuthStatus.Request()
let reauthenticateRequest = IBPortalApi.Session.PostIserverReauthenticate.Request()
let accountsRequest = IBPortalApi.Account.GetPortfolioAccounts.Request()

// Example with full response
//apiClient.makeRequest(ssoValidateRequest) { response in
//    switch response.result {
//    case .failure(let error):
//        // The request failed or response contained an undocumented status code
//        print(error)
//    case .success(let responseValue):
//        // responseValue is an enumaration of all docuemented response types, also includes error responses
//        switch responseValue {
//        case .status200(let succes):
//            print(succes)
//            print("Hello \(succes.userName)")
//        case .status401:
//            print("It was a 401")
//        case .status500:
//            print("It was a 500")
//        }
//    }
//}

let timer = Timer.scheduledTimer(withTimeInterval: 2 * 60, repeats: true) { _ in
    let handle = Task.runDetached {
        _ = await try? apiClient.makeDecodableRequest(tickleRequest)
        print("Tickled")
    }
}

let handle = Task.runDetached {
    do {
        let ssoResponse = await try apiClient.makeDecodableRequest(ssoValidateRequest)
        print(ssoResponse)
        let authStatusResponse = await try apiClient.makeDecodableRequest(authStatusRequest)
        print(authStatusResponse)
        let accountsResponse = await try apiClient.makeDecodableRequest(accountsRequest)
        print(accountsResponse)
        guard let firstAccount = accountsResponse.first, let accountId = firstAccount.accountId else {
            return
        }
        let accountSummaryRequest = IBPortalApi.Account.GetPortfolioByAccountIdSummary.Request(accountId: accountId)
        let accountSummaryResponse = await try apiClient.makeDecodableRequest(accountSummaryRequest)
        print(accountSummaryResponse)
        let accountLedgerRequest = IBPortalApi.Account.GetPortfolioByAccountIdLedger.Request(accountId: accountId)
        let accountLedgerResponse = await try apiClient.makeDecodableRequest(accountLedgerRequest)
        print(accountLedgerResponse)
        let positionsRequest = IBPortalApi.Portfolio.GetPortfolioByAccountIdPositionsByPageId.Request(accountId: accountId, pageId: "0")
        let positionsResponse = await try apiClient.makeDecodableRequest(positionsRequest)
        print(positionsResponse)
        while !(await try apiClient.makeDecodableRequest(authStatusRequest).authenticated ?? false) {
            print("Not authenticated")
            let reauthenticateResponse = await try apiClient.makeDecodableRequest(reauthenticateRequest)
            print(reauthenticateResponse)
            print(await try apiClient.makeDecodableRequest(authStatusRequest))
        }
        print("Authenticated")
        let ordersRequest = IBPortalApi.Order.GetIserverAccountOrders.Request()
        #warning("Something is wrong here, we should not send a body in a get request")
//        let ordersResponse = await try apiClient.makeDecodableRequest(ordersRequest)
//        print(ordersResponse)
        let appleConId = "265598"
        let googleConId = "208813720"
        let marketDataSnapshotRequest = IBPortalApi.MarketData.GetIserverMarketdataSnapshot.Request(conids: "\(appleConId),\(googleConId)")
        let dataSnapshotResponse = await try apiClient.makeDecodableRequest(marketDataSnapshotRequest)
        print(dataSnapshotResponse)
        let dataHistoryRequest = IBPortalApi.MarketData.GetIserverMarketdataHistory.Request(conid: googleConId, exchange: nil, period: "1y", bar: "1d", outsideRth: false)
//        let dataHistoryResponse = await try apiClient.makeDecodableRequest(dataHistoryRequest)
//        print(dataHistoryResponse)
        let buyOrderRequest = IBPortalApi.Order.PostIserverAccountByAccountIdOrder.Request(accountId: accountId, body: IBOrderRequest(acctId: accountId, allocationMethod: nil, cOID: "my-google-trade", conid: Int(googleConId)!, fxQty: nil, isCurrencyConversion: false, listingExchange: nil, orderType: "MKT", outsideRTH: false, parentId: nil, price: nil, quantity: 3, referrer: nil, secType: "\(googleConId):STK", side: "BUY", ticker: "GOOG", tif: "DAY", useAdaptive: false))
        let buyOrderResponse = await try apiClient.makeDecodableRequest(buyOrderRequest)
        print(buyOrderResponse)
        let buyOrderReplyRequest = IBPortalApi.Order.PostIserverReplyByReplyid.Request(replyid: buyOrderResponse.first!.id!, body: IBPortalApi.Order.PostIserverReplyByReplyid.Request.Body(confirmed: true))
        let buyOrderReplyResponse = await try apiClient.makeDecodableRequest(buyOrderReplyRequest)
        print(buyOrderReplyResponse)
    } catch {
        print(error)
    }
}

RunLoop.main.run()
