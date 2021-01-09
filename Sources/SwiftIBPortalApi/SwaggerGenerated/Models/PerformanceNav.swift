//
// PerformanceNav.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Net asset value data for the account or consolidated accounts. NAV data is not applicable to benchmarks. */

public struct PerformanceNav: Codable {

    /** array of dates, the length should be same as the length of returns inside data. */
    public var dates: [String]?
    /** D means Day */
    public var freq: String?
    public var data: [PerformanceCpsData]?

    public init(dates: [String]?, freq: String?, data: [PerformanceCpsData]?) {
        self.dates = dates
        self.freq = freq
        self.data = data
    }


}
