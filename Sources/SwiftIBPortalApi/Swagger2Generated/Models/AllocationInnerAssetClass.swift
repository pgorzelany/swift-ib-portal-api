//
// AllocationInnerAssetClass.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** portfolio allocation by asset class */

public struct AllocationInnerAssetClass: Codable {

    public var long: AllocationInnerAssetClassLong?
    public var short: AllocationInnerAssetClassShort?

    public init(long: AllocationInnerAssetClassLong?, short: AllocationInnerAssetClassShort?) {
        self.long = long
        self.short = short
    }


}

