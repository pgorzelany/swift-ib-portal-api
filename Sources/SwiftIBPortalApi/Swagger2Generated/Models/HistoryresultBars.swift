//
// HistoryresultBars.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct HistoryresultBars: Codable {

    public var _open: Double?
    public var high: Double?
    public var low: Double?
    public var close: Double?
    public var volume: Double?
    public var time: String?
    public var endTime: String?
    public var weightedAvg: Double?
    public var count: Double?

    public init(_open: Double?, high: Double?, low: Double?, close: Double?, volume: Double?, time: String?, endTime: String?, weightedAvg: Double?, count: Double?) {
        self._open = _open
        self.high = high
        self.low = low
        self.close = close
        self.volume = volume
        self.time = time
        self.endTime = endTime
        self.weightedAvg = weightedAvg
        self.count = count
    }

    public enum CodingKeys: String, CodingKey { 
        case _open = "open"
        case high
        case low
        case close
        case volume
        case time
        case endTime
        case weightedAvg
        case count
    }


}

