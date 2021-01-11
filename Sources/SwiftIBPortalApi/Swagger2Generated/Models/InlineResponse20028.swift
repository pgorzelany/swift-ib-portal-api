//
// InlineResponse20028.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct InlineResponse20028: Codable {

    public var serverId: String?
    public var columnName: String?
    public var symbol: String?
    public var conidex: String?
    public var conId: Double?
    public var availableChartPeriods: String?
    public var companyName: String?
    public var contractDescription1: String?
    public var listingExchange: String?
    public var secType: String?

    public init(serverId: String?, columnName: String?, symbol: String?, conidex: String?, conId: Double?, availableChartPeriods: String?, companyName: String?, contractDescription1: String?, listingExchange: String?, secType: String?) {
        self.serverId = serverId
        self.columnName = columnName
        self.symbol = symbol
        self.conidex = conidex
        self.conId = conId
        self.availableChartPeriods = availableChartPeriods
        self.companyName = companyName
        self.contractDescription1 = contractDescription1
        self.listingExchange = listingExchange
        self.secType = secType
    }

    public enum CodingKeys: String, CodingKey { 
        case serverId = "server_id"
        case columnName = "column_name"
        case symbol
        case conidex
        case conId = "con_id"
        case availableChartPeriods = "available_chart_periods"
        case companyName = "company_name"
        case contractDescription1 = "contract_description_1"
        case listingExchange = "listing_exchange"
        case secType = "sec_type"
    }


}
