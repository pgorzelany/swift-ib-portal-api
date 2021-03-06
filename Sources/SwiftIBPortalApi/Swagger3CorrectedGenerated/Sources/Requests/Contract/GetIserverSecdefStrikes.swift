//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.Contract {

    /**
    Get strikes for Options/Warrant

    You can get available contract months and exchanges from "/iserver/secdef/search"
    */
    public enum GetIserverSecdefStrikes {

        public static let service = APIService<Response>(id: "getIserverSecdefStrikes", tag: "Contract", method: "GET", path: "/iserver/secdef/strikes", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** contract id */
                public var conid: String

                /** OPT/WAR */
                public var sectype: String

                /** contract month */
                public var month: String

                /** optional, default is SMART */
                public var exchange: String?

                public init(conid: String, sectype: String, month: String, exchange: String? = nil) {
                    self.conid = conid
                    self.sectype = sectype
                    self.month = month
                    self.exchange = exchange
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetIserverSecdefStrikes.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(conid: String, sectype: String, month: String, exchange: String? = nil) {
                let options = Options(conid: conid, sectype: sectype, month: month, exchange: exchange)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["conid"] = options.conid
                params["sectype"] = options.sectype
                params["month"] = options.month
                if let exchange = options.exchange {
                  params["exchange"] = exchange
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** You can get available contract months and exchanges from "/iserver/secdef/search" */
            public struct Status200: APIModel {

                public let call: [String]?

                public let put: [String]?

                public init(call: [String]? = nil, put: [String]? = nil) {
                    self.call = call
                    self.put = put
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    call = try container.decodeArrayIfPresent("call")
                    put = try container.decodeArrayIfPresent("put")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(call, forKey: "call")
                    try container.encodeIfPresent(put, forKey: "put")
                }

            }

            /** You can get available contract months and exchanges from "/iserver/secdef/search" */
            public struct Status500: APIModel {

                public let error: String?

                public init(error: String? = nil) {
                    self.error = error
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decodeIfPresent("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(error, forKey: "error")
                }

            }
            public typealias SuccessType = Status200

            /** returns an object contains call/put strike prices */
            case status200(Status200)

            /** error while processing the request */
            case status500(Status500)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: Status500? {
                switch self {
                case .status500(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, Status500> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status500(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status500: return 500
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status500: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 500: self = try .status500(decoder.decode(Status500.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
