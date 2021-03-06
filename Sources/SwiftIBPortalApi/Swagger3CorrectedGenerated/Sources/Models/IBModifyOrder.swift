//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct IBModifyOrder: APIModel {

    public let acctId: String?

    public let auxPrice: Double?

    public let conid: Int?

    /** optional, not required */
    public let listingExchange: String?

    /** for example LMT */
    public let orderType: String?

    public let outsideRTH: Bool?

    public let price: Double?

    /** usually integer, for some special cases can be float numbers */
    public let quantity: Double?

    /** SELL or BUY */
    public let side: String?

    public let ticker: String?

    /** for example DAY */
    public let tif: String?

    public init(acctId: String? = nil, auxPrice: Double? = nil, conid: Int? = nil, listingExchange: String? = nil, orderType: String? = nil, outsideRTH: Bool? = nil, price: Double? = nil, quantity: Double? = nil, side: String? = nil, ticker: String? = nil, tif: String? = nil) {
        self.acctId = acctId
        self.auxPrice = auxPrice
        self.conid = conid
        self.listingExchange = listingExchange
        self.orderType = orderType
        self.outsideRTH = outsideRTH
        self.price = price
        self.quantity = quantity
        self.side = side
        self.ticker = ticker
        self.tif = tif
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        acctId = try container.decodeIfPresent("acctId")
        auxPrice = try container.decodeIfPresent("auxPrice")
        conid = try container.decodeIfPresent("conid")
        listingExchange = try container.decodeIfPresent("listingExchange")
        orderType = try container.decodeIfPresent("orderType")
        outsideRTH = try container.decodeIfPresent("outsideRTH")
        price = try container.decodeIfPresent("price")
        quantity = try container.decodeIfPresent("quantity")
        side = try container.decodeIfPresent("side")
        ticker = try container.decodeIfPresent("ticker")
        tif = try container.decodeIfPresent("tif")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(acctId, forKey: "acctId")
        try container.encodeIfPresent(auxPrice, forKey: "auxPrice")
        try container.encodeIfPresent(conid, forKey: "conid")
        try container.encodeIfPresent(listingExchange, forKey: "listingExchange")
        try container.encodeIfPresent(orderType, forKey: "orderType")
        try container.encodeIfPresent(outsideRTH, forKey: "outsideRTH")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(quantity, forKey: "quantity")
        try container.encodeIfPresent(side, forKey: "side")
        try container.encodeIfPresent(ticker, forKey: "ticker")
        try container.encodeIfPresent(tif, forKey: "tif")
    }

}
