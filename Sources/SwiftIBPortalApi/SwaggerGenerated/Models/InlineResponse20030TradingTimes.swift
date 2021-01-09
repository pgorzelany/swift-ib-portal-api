//
// InlineResponse20030TradingTimes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Returns tradingTime in exchange time zone. */

public struct InlineResponse20030TradingTimes: Codable {

    public var openingTime: Int?
    public var closingTime: Int?
    public var cancelDayOrders: String?

    public init(openingTime: Int?, closingTime: Int?, cancelDayOrders: String?) {
        self.openingTime = openingTime
        self.closingTime = closingTime
        self.cancelDayOrders = cancelDayOrders
    }


}
