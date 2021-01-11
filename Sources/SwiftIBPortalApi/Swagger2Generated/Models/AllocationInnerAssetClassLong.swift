//
// AllocationInnerAssetClassLong.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** long positions allocation */

public struct AllocationInnerAssetClassLong: Codable {

    public var STK: Double?
    public var OPT: Double?
    public var FUT: Double?
    public var WAR: Double?
    public var BOND: Double?
    public var CASH: Double?

    public init(STK: Double?, OPT: Double?, FUT: Double?, WAR: Double?, BOND: Double?, CASH: Double?) {
        self.STK = STK
        self.OPT = OPT
        self.FUT = FUT
        self.WAR = WAR
        self.BOND = BOND
        self.CASH = CASH
    }


}
