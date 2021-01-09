//
// SecdefInner.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** security definition information */

public struct SecdefInner: Codable {

    public var conid: Int?
    public var name: String?
    public var assetClass: String?
    public var expiry: String?
    public var lastTradingDay: String?
    public var group: String?
    public var putOrCall: String?
    public var sector: String?
    public var sectorGroup: String?
    public var strike: Double?
    public var ticker: String?
    public var undConid: Int?
    public var fullName: String?
    public var pageSize: Int?

    public init(conid: Int?, name: String?, assetClass: String?, expiry: String?, lastTradingDay: String?, group: String?, putOrCall: String?, sector: String?, sectorGroup: String?, strike: Double?, ticker: String?, undConid: Int?, fullName: String?, pageSize: Int?) {
        self.conid = conid
        self.name = name
        self.assetClass = assetClass
        self.expiry = expiry
        self.lastTradingDay = lastTradingDay
        self.group = group
        self.putOrCall = putOrCall
        self.sector = sector
        self.sectorGroup = sectorGroup
        self.strike = strike
        self.ticker = ticker
        self.undConid = undConid
        self.fullName = fullName
        self.pageSize = pageSize
    }


}
