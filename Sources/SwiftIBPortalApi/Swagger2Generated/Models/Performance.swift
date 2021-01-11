//
// Performance.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Performance: Codable {

    public var _id: String?
    public var cps: PerformanceCps?
    public var tpps: PerformanceTpps?
    public var nav: PerformanceNav?
    public var pm: String?
    public var included: [String]?
    public var currencyType: String?
    public var rc: Int?

    public init(_id: String?, cps: PerformanceCps?, tpps: PerformanceTpps?, nav: PerformanceNav?, pm: String?, included: [String]?, currencyType: String?, rc: Int?) {
        self._id = _id
        self.cps = cps
        self.tpps = tpps
        self.nav = nav
        self.pm = pm
        self.included = included
        self.currencyType = currencyType
        self.rc = rc
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case cps
        case tpps
        case nav
        case pm
        case included
        case currencyType
        case rc
    }


}
