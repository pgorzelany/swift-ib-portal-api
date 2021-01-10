//
// InlineResponse20016.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct InlineResponse20016: Codable {

    public var orders: [InlineResponse20016Orders]?
    /** If live order update is a snapshot */
    public var snapshot: Bool?

    public init(orders: [InlineResponse20016Orders]?, snapshot: Bool?) {
        self.orders = orders
        self.snapshot = snapshot
    }


}

