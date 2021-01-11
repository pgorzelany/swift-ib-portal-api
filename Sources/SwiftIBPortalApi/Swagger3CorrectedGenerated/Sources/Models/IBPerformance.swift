//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct IBPerformance: APIModel {

    /** Cumulative performance data */
    public let cps: Cps?

    public let currencyType: String?

    public let id: String?

    public let included: [String]?

    /** Net asset value data for the account or consolidated accounts. NAV data is not applicable to benchmarks. */
    public let nav: Nav?

    public let pm: String?

    public let rc: Int?

    /** Time period performance data */
    public let tpps: Tpps?

    /** Cumulative performance data */
    public struct Cps: APIModel {

        public let data: [DataType]?

        /** array of dates, the length should be same as the length of returns inside data. */
        public let dates: [String]?

        /** D means Day */
        public let freq: String?

        /** Cumulative performance data */
        public struct DataType: APIModel {

            public let baseCurrency: String?

            /** end date-- yyyyMMdd */
            public let end: String?

            public let id: String?

            /** for example-- acctid */
            public let idType: String?

            /** each value stands for price change percent of corresponding date in dates array */
            public let returns: [Double]?

            /** start date-- yyyyMMdd */
            public let start: String?

            public init(baseCurrency: String? = nil, end: String? = nil, id: String? = nil, idType: String? = nil, returns: [Double]? = nil, start: String? = nil) {
                self.baseCurrency = baseCurrency
                self.end = end
                self.id = id
                self.idType = idType
                self.returns = returns
                self.start = start
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                baseCurrency = try container.decodeIfPresent("baseCurrency")
                end = try container.decodeIfPresent("end")
                id = try container.decodeIfPresent("id")
                idType = try container.decodeIfPresent("idType")
                returns = try container.decodeArrayIfPresent("returns")
                start = try container.decodeIfPresent("start")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(baseCurrency, forKey: "baseCurrency")
                try container.encodeIfPresent(end, forKey: "end")
                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(idType, forKey: "idType")
                try container.encodeIfPresent(returns, forKey: "returns")
                try container.encodeIfPresent(start, forKey: "start")
            }

        }

        public init(data: [DataType]? = nil, dates: [String]? = nil, freq: String? = nil) {
            self.data = data
            self.dates = dates
            self.freq = freq
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            data = try container.decodeArrayIfPresent("data")
            dates = try container.decodeArrayIfPresent("dates")
            freq = try container.decodeIfPresent("freq")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(data, forKey: "data")
            try container.encodeIfPresent(dates, forKey: "dates")
            try container.encodeIfPresent(freq, forKey: "freq")
        }

    }

    /** Net asset value data for the account or consolidated accounts. NAV data is not applicable to benchmarks. */
    public struct Nav: APIModel {

        public let data: [DataType]?

        /** array of dates, the length should be same as the length of returns inside data. */
        public let dates: [String]?

        /** D means Day */
        public let freq: String?

        /** Net asset value data for the account or consolidated accounts. NAV data is not applicable to benchmarks. */
        public struct DataType: APIModel {

            public let baseCurrency: String?

            /** end date-- yyyyMMdd */
            public let end: String?

            public let id: String?

            /** for example-- acctid */
            public let idType: String?

            /** each value stands for price change percent of corresponding date in dates array */
            public let returns: [Double]?

            /** start date-- yyyyMMdd */
            public let start: String?

            public init(baseCurrency: String? = nil, end: String? = nil, id: String? = nil, idType: String? = nil, returns: [Double]? = nil, start: String? = nil) {
                self.baseCurrency = baseCurrency
                self.end = end
                self.id = id
                self.idType = idType
                self.returns = returns
                self.start = start
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                baseCurrency = try container.decodeIfPresent("baseCurrency")
                end = try container.decodeIfPresent("end")
                id = try container.decodeIfPresent("id")
                idType = try container.decodeIfPresent("idType")
                returns = try container.decodeArrayIfPresent("returns")
                start = try container.decodeIfPresent("start")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(baseCurrency, forKey: "baseCurrency")
                try container.encodeIfPresent(end, forKey: "end")
                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(idType, forKey: "idType")
                try container.encodeIfPresent(returns, forKey: "returns")
                try container.encodeIfPresent(start, forKey: "start")
            }

        }

        public init(data: [DataType]? = nil, dates: [String]? = nil, freq: String? = nil) {
            self.data = data
            self.dates = dates
            self.freq = freq
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            data = try container.decodeArrayIfPresent("data")
            dates = try container.decodeArrayIfPresent("dates")
            freq = try container.decodeIfPresent("freq")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(data, forKey: "data")
            try container.encodeIfPresent(dates, forKey: "dates")
            try container.encodeIfPresent(freq, forKey: "freq")
        }

    }

    /** Time period performance data */
    public struct Tpps: APIModel {

        public let data: [DataType]?

        /** array of dates, the length should be same as the length of returns inside data. */
        public let dates: [String]?

        /** M means Month */
        public let freq: String?

        /** Time period performance data */
        public struct DataType: APIModel {

            public let baseCurrency: String?

            /** end date-- yyyyMMdd */
            public let end: String?

            public let id: String?

            /** for example-- acctid */
            public let idType: String?

            /** each value stands for price change percent of corresponding date in dates array */
            public let returns: [Double]?

            /** start date-- yyyyMMdd */
            public let start: String?

            public init(baseCurrency: String? = nil, end: String? = nil, id: String? = nil, idType: String? = nil, returns: [Double]? = nil, start: String? = nil) {
                self.baseCurrency = baseCurrency
                self.end = end
                self.id = id
                self.idType = idType
                self.returns = returns
                self.start = start
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                baseCurrency = try container.decodeIfPresent("baseCurrency")
                end = try container.decodeIfPresent("end")
                id = try container.decodeIfPresent("id")
                idType = try container.decodeIfPresent("idType")
                returns = try container.decodeArrayIfPresent("returns")
                start = try container.decodeIfPresent("start")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(baseCurrency, forKey: "baseCurrency")
                try container.encodeIfPresent(end, forKey: "end")
                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(idType, forKey: "idType")
                try container.encodeIfPresent(returns, forKey: "returns")
                try container.encodeIfPresent(start, forKey: "start")
            }

        }

        public init(data: [DataType]? = nil, dates: [String]? = nil, freq: String? = nil) {
            self.data = data
            self.dates = dates
            self.freq = freq
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            data = try container.decodeArrayIfPresent("data")
            dates = try container.decodeArrayIfPresent("dates")
            freq = try container.decodeIfPresent("freq")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(data, forKey: "data")
            try container.encodeIfPresent(dates, forKey: "dates")
            try container.encodeIfPresent(freq, forKey: "freq")
        }

    }

    public init(cps: Cps? = nil, currencyType: String? = nil, id: String? = nil, included: [String]? = nil, nav: Nav? = nil, pm: String? = nil, rc: Int? = nil, tpps: Tpps? = nil) {
        self.cps = cps
        self.currencyType = currencyType
        self.id = id
        self.included = included
        self.nav = nav
        self.pm = pm
        self.rc = rc
        self.tpps = tpps
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        cps = try container.decodeIfPresent("cps")
        currencyType = try container.decodeIfPresent("currencyType")
        id = try container.decodeIfPresent("id")
        included = try container.decodeArrayIfPresent("included")
        nav = try container.decodeIfPresent("nav")
        pm = try container.decodeIfPresent("pm")
        rc = try container.decodeIfPresent("rc")
        tpps = try container.decodeIfPresent("tpps")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(cps, forKey: "cps")
        try container.encodeIfPresent(currencyType, forKey: "currencyType")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(included, forKey: "included")
        try container.encodeIfPresent(nav, forKey: "nav")
        try container.encodeIfPresent(pm, forKey: "pm")
        try container.encodeIfPresent(rc, forKey: "rc")
        try container.encodeIfPresent(tpps, forKey: "tpps")
    }

}