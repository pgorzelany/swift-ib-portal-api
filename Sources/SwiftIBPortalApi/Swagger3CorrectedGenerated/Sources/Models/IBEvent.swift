//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct IBEvent: APIModel {

    public let conids: [String]?

    /** will be different for different event types */
    public let data: [String: AnyCodable]?

    /** for example 11662135 */
    public let eventKey: String?

    public let eventType: String?

    /** for exmple 20180817T040000+0000 */
    public let indexDate: String?

    public let indexDateType: String?

    /** for example RSE */
    public let source: String?

    public let status: String?

    public let tooltips: [String: AnyCodable]?

    public init(conids: [String]? = nil, data: [String: AnyCodable]? = nil, eventKey: String? = nil, eventType: String? = nil, indexDate: String? = nil, indexDateType: String? = nil, source: String? = nil, status: String? = nil, tooltips: [String: AnyCodable]? = nil) {
        self.conids = conids
        self.data = data
        self.eventKey = eventKey
        self.eventType = eventType
        self.indexDate = indexDate
        self.indexDateType = indexDateType
        self.source = source
        self.status = status
        self.tooltips = tooltips
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        conids = try container.decodeArrayIfPresent("conids")
        data = try container.decodeAnyIfPresent("data")
        eventKey = try container.decodeIfPresent("event_key")
        eventType = try container.decodeIfPresent("event_type")
        indexDate = try container.decodeIfPresent("index_date")
        indexDateType = try container.decodeIfPresent("index_date_type")
        source = try container.decodeIfPresent("source")
        status = try container.decodeIfPresent("status")
        tooltips = try container.decodeAnyIfPresent("tooltips")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(conids, forKey: "conids")
        try container.encodeAnyIfPresent(data, forKey: "data")
        try container.encodeIfPresent(eventKey, forKey: "event_key")
        try container.encodeIfPresent(eventType, forKey: "event_type")
        try container.encodeIfPresent(indexDate, forKey: "index_date")
        try container.encodeIfPresent(indexDateType, forKey: "index_date_type")
        try container.encodeIfPresent(source, forKey: "source")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeAnyIfPresent(tooltips, forKey: "tooltips")
    }

}
