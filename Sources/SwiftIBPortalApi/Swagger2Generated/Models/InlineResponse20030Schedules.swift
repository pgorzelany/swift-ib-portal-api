//
// InlineResponse20030Schedules.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct InlineResponse20030Schedules: Codable {

    public var clearingCycleEndTime: Int?
    /** 20000101 stands for any Sat, 20000102 stands for any Sun, ... 20000107 stands for any Fri. Any other date stands for itself. */
    public var tradingScheduleDate: Int?
    public var sessions: InlineResponse20030Sessions?
    public var tradingTimes: InlineResponse20030TradingTimes?

    public init(clearingCycleEndTime: Int?, tradingScheduleDate: Int?, sessions: InlineResponse20030Sessions?, tradingTimes: InlineResponse20030TradingTimes?) {
        self.clearingCycleEndTime = clearingCycleEndTime
        self.tradingScheduleDate = tradingScheduleDate
        self.sessions = sessions
        self.tradingTimes = tradingTimes
    }


}

