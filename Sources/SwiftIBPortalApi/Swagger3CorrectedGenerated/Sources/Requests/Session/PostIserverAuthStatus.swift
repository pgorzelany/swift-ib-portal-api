//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.Session {

    /**
    Authentication Status

    Current Authentication status to the Brokerage system. Market Data and Trading is not possible if not authenticated, e.g. authenticated shows false
    */
    public enum PostIserverAuthStatus {

        public static let service = APIService<Response>(id: "postIserverAuthStatus", tag: "Session", method: "POST", path: "/iserver/auth/status", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: PostIserverAuthStatus.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = AuthStatus

            /** Authentication Status */
            case status200(AuthStatus)

            public var success: AuthStatus? {
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
                case 200: self = try .status200(decoder.decode(AuthStatus.self, from: data))
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