//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.Alert {

    /**
    Create or modify alert

    Please note here, DO NOT pass orderId when creating a new alert, toolId is only required for MTA alert
    */
    public enum PostIserverAccountByAccountIdAlert {

        public static let service = APIService<Response>(id: "postIserverAccountByAccountIdAlert", tag: "Alert", method: "POST", path: "/iserver/account/{accountId}/alert", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** account id */
                public var accountId: String

                public init(accountId: String) {
                    self.accountId = accountId
                }
            }

            public var options: Options

            public var body: AlertRequest

            public init(body: AlertRequest, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostIserverAccountByAccountIdAlert.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(accountId: String, body: AlertRequest) {
                let options = Options(accountId: accountId)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "accountId" + "}", with: "\(self.options.accountId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Please note here, DO NOT pass orderId when creating a new alert, toolId is only required for MTA alert
             */
            public class Status200: APIModel {

                public var orderId: Int?

                public var orderStatus: String?

                public var requestId: Int?

                public var success: Bool?

                public var text: String?

                public var warningMessage: String?

                public init(orderId: Int? = nil, orderStatus: String? = nil, requestId: Int? = nil, success: Bool? = nil, text: String? = nil, warningMessage: String? = nil) {
                    self.orderId = orderId
                    self.orderStatus = orderStatus
                    self.requestId = requestId
                    self.success = success
                    self.text = text
                    self.warningMessage = warningMessage
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    orderId = try container.decodeIfPresent("order_id")
                    orderStatus = try container.decodeIfPresent("order_status")
                    requestId = try container.decodeIfPresent("request_id")
                    success = try container.decodeIfPresent("success")
                    text = try container.decodeIfPresent("text")
                    warningMessage = try container.decodeIfPresent("warning_message")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(orderId, forKey: "order_id")
                    try container.encodeIfPresent(orderStatus, forKey: "order_status")
                    try container.encodeIfPresent(requestId, forKey: "request_id")
                    try container.encodeIfPresent(success, forKey: "success")
                    try container.encodeIfPresent(text, forKey: "text")
                    try container.encodeIfPresent(warningMessage, forKey: "warning_message")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.orderId == object.orderId else { return false }
                  guard self.orderStatus == object.orderStatus else { return false }
                  guard self.requestId == object.requestId else { return false }
                  guard self.success == object.success else { return false }
                  guard self.text == object.text else { return false }
                  guard self.warningMessage == object.warningMessage else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** returns an object */
            case status200(Status200)

            public var success: Status200? {
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
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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