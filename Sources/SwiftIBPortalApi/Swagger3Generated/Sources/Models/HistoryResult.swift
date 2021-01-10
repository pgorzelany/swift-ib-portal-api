//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class HistoryResult: APIModel {

    public var bars: Bars?

    public class Bars: APIModel {

        public var close: Double?

        public var count: Double?

        public var endTime: String?

        public var high: Double?

        public var low: Double?

        public var `open`: Double?

        public var time: String?

        public var volume: Double?

        public var weightedAvg: Double?

        public init(close: Double? = nil, count: Double? = nil, endTime: String? = nil, high: Double? = nil, low: Double? = nil, `open`: Double? = nil, time: String? = nil, volume: Double? = nil, weightedAvg: Double? = nil) {
            self.close = close
            self.count = count
            self.endTime = endTime
            self.high = high
            self.low = low
            self.`open` = `open`
            self.time = time
            self.volume = volume
            self.weightedAvg = weightedAvg
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            close = try container.decodeIfPresent("close")
            count = try container.decodeIfPresent("count")
            endTime = try container.decodeIfPresent("endTime")
            high = try container.decodeIfPresent("high")
            low = try container.decodeIfPresent("low")
            `open` = try container.decodeIfPresent("open")
            time = try container.decodeIfPresent("time")
            volume = try container.decodeIfPresent("volume")
            weightedAvg = try container.decodeIfPresent("weightedAvg")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(close, forKey: "close")
            try container.encodeIfPresent(count, forKey: "count")
            try container.encodeIfPresent(endTime, forKey: "endTime")
            try container.encodeIfPresent(high, forKey: "high")
            try container.encodeIfPresent(low, forKey: "low")
            try container.encodeIfPresent(`open`, forKey: "open")
            try container.encodeIfPresent(time, forKey: "time")
            try container.encodeIfPresent(volume, forKey: "volume")
            try container.encodeIfPresent(weightedAvg, forKey: "weightedAvg")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Bars else { return false }
          guard self.close == object.close else { return false }
          guard self.count == object.count else { return false }
          guard self.endTime == object.endTime else { return false }
          guard self.high == object.high else { return false }
          guard self.low == object.low else { return false }
          guard self.`open` == object.`open` else { return false }
          guard self.time == object.time else { return false }
          guard self.volume == object.volume else { return false }
          guard self.weightedAvg == object.weightedAvg else { return false }
          return true
        }

        public static func == (lhs: Bars, rhs: Bars) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(bars: Bars? = nil) {
        self.bars = bars
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bars = try container.decodeIfPresent("bars")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bars, forKey: "bars")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? HistoryResult else { return false }
      guard self.bars == object.bars else { return false }
      return true
    }

    public static func == (lhs: HistoryResult, rhs: HistoryResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}