//
// ScannerParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ScannerParams: Codable {

    /** for example-STK */
    public var instrument: String?
    /** for example-TOP_PERC_GAIN */
    public var type: String?
    public var filter: [ScannerparamsFilter]?
    public var location: String?
    public var size: String?

    public init(instrument: String?, type: String?, filter: [ScannerparamsFilter]?, location: String?, size: String?) {
        self.instrument = instrument
        self.type = type
        self.filter = filter
        self.location = location
        self.size = size
    }


}
