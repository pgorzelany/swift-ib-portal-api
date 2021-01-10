//
// Summary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Summary: Codable {

    public var amount: Double?
    public var currency: String?
    public var isNull: Bool?
    public var timestamp: Int?
    public var value: String?

    public init(amount: Double?, currency: String?, isNull: Bool?, timestamp: Int?, value: String?) {
        self.amount = amount
        self.currency = currency
        self.isNull = isNull
        self.timestamp = timestamp
        self.value = value
    }


}

