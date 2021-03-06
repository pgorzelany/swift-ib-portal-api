//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.FYI {

    /** Delete a device */
    public enum DeleteFyiDeliveryoptionsByDeviceId {

        public static let service = APIService<Response>(id: "deleteFyiDeliveryoptionsByDeviceId", tag: "FYI", method: "DELETE", path: "/fyi/deliveryoptions/{deviceId}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** device ID */
                public var deviceId: String

                public init(deviceId: String) {
                    self.deviceId = deviceId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DeleteFyiDeliveryoptionsByDeviceId.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(deviceId: String) {
                let options = Options(deviceId: deviceId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "deviceId" + "}", with: "\(self.options.deviceId)")
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
