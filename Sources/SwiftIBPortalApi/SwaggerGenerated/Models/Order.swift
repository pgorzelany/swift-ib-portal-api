//
// Order.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** contains all the order related info */

public struct Order: Codable {

    /** account id */
    public var acct: String?
    public var conid: Int?
    public var orderDesc: String?
    public var description1: String?
    /** for exmple FB */
    public var ticker: String?
    /** for example STK */
    public var secType: String?
    /** for example NASDAQ.NMS */
    public var listingExchange: String?
    public var remainingQuantity: String?
    public var filledQuantity: String?
    public var companyName: String?
    /** PendingSubmit - Indicates the order was sent, but confirmation has not been received that it has been received by the destination.                  Occurs most commonly if an exchange is closed. PendingCancel - Indicates that a request has been sent to cancel an order but confirmation has not been received of its cancellation. PreSubmitted - Indicates that a simulated order type has been accepted by the IBKR system and that this order has yet to be elected.                 The order is held in the IBKR system until the election criteria are met. At that time the order is transmitted to the order destination as specified.  Submitted - Indicates that the order has been accepted at the order destination and is working. Cancelled - Indicates that the balance of the order has been confirmed cancelled by the IB system.              This could occur unexpectedly when IB or the destination has rejected the order.   Filled - Indicates that the order has been completely filled.  Inactive - Indicates the order is not working, for instance if the order was invalid and triggered an error message,            or if the order was to short a security and shares have not yet been located.   */
    public var status: String?
    /** for example Limit */
    public var origOrderType: String?
    /** BUY or SELL */
    public var side: String?
    public var price: Double?
    /** back-ground color */
    public var bgColor: String?
    public var fgColor: String?
    public var orderId: Int?
    /** Only exists in child order of bracket */
    public var parentId: Int?
    /** User defined string used to identify the order. Value is set using \&quot;cOID\&quot; field while placing an order. */
    public var orderRef: String?

    public init(acct: String?, conid: Int?, orderDesc: String?, description1: String?, ticker: String?, secType: String?, listingExchange: String?, remainingQuantity: String?, filledQuantity: String?, companyName: String?, status: String?, origOrderType: String?, side: String?, price: Double?, bgColor: String?, fgColor: String?, orderId: Int?, parentId: Int?, orderRef: String?) {
        self.acct = acct
        self.conid = conid
        self.orderDesc = orderDesc
        self.description1 = description1
        self.ticker = ticker
        self.secType = secType
        self.listingExchange = listingExchange
        self.remainingQuantity = remainingQuantity
        self.filledQuantity = filledQuantity
        self.companyName = companyName
        self.status = status
        self.origOrderType = origOrderType
        self.side = side
        self.price = price
        self.bgColor = bgColor
        self.fgColor = fgColor
        self.orderId = orderId
        self.parentId = parentId
        self.orderRef = orderRef
    }

    public enum CodingKeys: String, CodingKey { 
        case acct
        case conid
        case orderDesc
        case description1
        case ticker
        case secType
        case listingExchange
        case remainingQuantity
        case filledQuantity
        case companyName
        case status
        case origOrderType
        case side
        case price
        case bgColor
        case fgColor
        case orderId
        case parentId
        case orderRef = "order_ref"
    }


}
