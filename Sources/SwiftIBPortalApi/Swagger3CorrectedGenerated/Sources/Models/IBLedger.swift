//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct IBLedger: APIModel {

    public let acctcode: String?

    public let cashbalance: Double?

    public let commoditymarketvalue: Double?

    public let corporatebondsmarketvalue: Double?

    public let currency: String?

    public let exchangerate: Double?

    public let funds: Double?

    public let futuremarketvalue: Double?

    public let interest: Double?

    public let issueroptionsmarketvalue: Double?

    public let key: String?

    public let moneyfunds: Double?

    public let netliquidationvalue: Double?

    public let realizedpnl: Double?

    public let sessionid: Int?

    public let settledcash: Double?

    public let severity: Int?

    public let stockmarketvalue: Double?

    public let timestamp: Int?

    public let unrealizedpnl: Double?

    public let warrantsmarketvalue: Double?

    public init(acctcode: String? = nil, cashbalance: Double? = nil, commoditymarketvalue: Double? = nil, corporatebondsmarketvalue: Double? = nil, currency: String? = nil, exchangerate: Double? = nil, funds: Double? = nil, futuremarketvalue: Double? = nil, interest: Double? = nil, issueroptionsmarketvalue: Double? = nil, key: String? = nil, moneyfunds: Double? = nil, netliquidationvalue: Double? = nil, realizedpnl: Double? = nil, sessionid: Int? = nil, settledcash: Double? = nil, severity: Int? = nil, stockmarketvalue: Double? = nil, timestamp: Int? = nil, unrealizedpnl: Double? = nil, warrantsmarketvalue: Double? = nil) {
        self.acctcode = acctcode
        self.cashbalance = cashbalance
        self.commoditymarketvalue = commoditymarketvalue
        self.corporatebondsmarketvalue = corporatebondsmarketvalue
        self.currency = currency
        self.exchangerate = exchangerate
        self.funds = funds
        self.futuremarketvalue = futuremarketvalue
        self.interest = interest
        self.issueroptionsmarketvalue = issueroptionsmarketvalue
        self.key = key
        self.moneyfunds = moneyfunds
        self.netliquidationvalue = netliquidationvalue
        self.realizedpnl = realizedpnl
        self.sessionid = sessionid
        self.settledcash = settledcash
        self.severity = severity
        self.stockmarketvalue = stockmarketvalue
        self.timestamp = timestamp
        self.unrealizedpnl = unrealizedpnl
        self.warrantsmarketvalue = warrantsmarketvalue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        acctcode = try container.decodeIfPresent("acctcode")
        cashbalance = try container.decodeIfPresent("cashbalance")
        commoditymarketvalue = try container.decodeIfPresent("commoditymarketvalue")
        corporatebondsmarketvalue = try container.decodeIfPresent("corporatebondsmarketvalue")
        currency = try container.decodeIfPresent("currency")
        exchangerate = try container.decodeIfPresent("exchangerate")
        funds = try container.decodeIfPresent("funds")
        futuremarketvalue = try container.decodeIfPresent("futuremarketvalue")
        interest = try container.decodeIfPresent("interest")
        issueroptionsmarketvalue = try container.decodeIfPresent("issueroptionsmarketvalue")
        key = try container.decodeIfPresent("key")
        moneyfunds = try container.decodeIfPresent("moneyfunds")
        netliquidationvalue = try container.decodeIfPresent("netliquidationvalue")
        realizedpnl = try container.decodeIfPresent("realizedpnl")
        sessionid = try container.decodeIfPresent("sessionid")
        settledcash = try container.decodeIfPresent("settledcash")
        severity = try container.decodeIfPresent("severity")
        stockmarketvalue = try container.decodeIfPresent("stockmarketvalue")
        timestamp = try container.decodeIfPresent("timestamp")
        unrealizedpnl = try container.decodeIfPresent("unrealizedpnl")
        warrantsmarketvalue = try container.decodeIfPresent("warrantsmarketvalue")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(acctcode, forKey: "acctcode")
        try container.encodeIfPresent(cashbalance, forKey: "cashbalance")
        try container.encodeIfPresent(commoditymarketvalue, forKey: "commoditymarketvalue")
        try container.encodeIfPresent(corporatebondsmarketvalue, forKey: "corporatebondsmarketvalue")
        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(exchangerate, forKey: "exchangerate")
        try container.encodeIfPresent(funds, forKey: "funds")
        try container.encodeIfPresent(futuremarketvalue, forKey: "futuremarketvalue")
        try container.encodeIfPresent(interest, forKey: "interest")
        try container.encodeIfPresent(issueroptionsmarketvalue, forKey: "issueroptionsmarketvalue")
        try container.encodeIfPresent(key, forKey: "key")
        try container.encodeIfPresent(moneyfunds, forKey: "moneyfunds")
        try container.encodeIfPresent(netliquidationvalue, forKey: "netliquidationvalue")
        try container.encodeIfPresent(realizedpnl, forKey: "realizedpnl")
        try container.encodeIfPresent(sessionid, forKey: "sessionid")
        try container.encodeIfPresent(settledcash, forKey: "settledcash")
        try container.encodeIfPresent(severity, forKey: "severity")
        try container.encodeIfPresent(stockmarketvalue, forKey: "stockmarketvalue")
        try container.encodeIfPresent(timestamp, forKey: "timestamp")
        try container.encodeIfPresent(unrealizedpnl, forKey: "unrealizedpnl")
        try container.encodeIfPresent(warrantsmarketvalue, forKey: "warrantsmarketvalue")
    }

}