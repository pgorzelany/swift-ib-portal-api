//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.FYI {

    /**
    Enable/Disable certain subscription

    Configure which typecode you would like to enable/disable.
    */
    public enum PostFyiSettingsByTypecode {

        public static let service = APIService<Response>(id: "postFyiSettingsByTypecode", tag: "FYI", method: "POST", path: "/fyi/settings/{typecode}", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            /** Configure which typecode you would like to enable/disable.
             */
            public struct Body: APIModel {

                public let enabled: Bool?

                public init(enabled: Bool? = nil) {
                    self.enabled = enabled
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    enabled = try container.decodeIfPresent("enabled")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(enabled, forKey: "enabled")
                }

            }

            public struct Options {

                /** fyi code */
                public var typecode: String

                public var enabled: Bool?

                public init(typecode: String, enabled: Bool? = nil) {
                    self.typecode = typecode
                    self.enabled = enabled
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostFyiSettingsByTypecode.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(typecode: String, enabled: Bool? = nil, body: Body) {
                let options = Options(typecode: typecode, enabled: enabled)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "typecode" + "}", with: "\(self.options.typecode)")
            }

            public override var formParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let enabled = options.enabled {
                  params["enabled"] = enabled
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [String: AnyCodable]

            /** 200 means successful */
            case status200([String: AnyCodable])

            public var success: [String: AnyCodable]? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decodeAny([String: AnyCodable].self, from: data))
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
