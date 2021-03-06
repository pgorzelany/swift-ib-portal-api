//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.Order {

    /**
    Place Order Reply

    Reply to questions when placing orders and submit orders
    */
    public enum PostIserverReplyByReplyid {

        public static let service = APIService<Response>(id: "postIserverReplyByReplyid", tag: "Order", method: "POST", path: "/iserver/reply/{replyid}", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            /** Reply to questions when placing orders and submit orders */
            public struct Body: APIModel {

                /** answer to question, true means yes, false means no */
                public let confirmed: Bool?

                public init(confirmed: Bool? = nil) {
                    self.confirmed = confirmed
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    confirmed = try container.decodeIfPresent("confirmed")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(confirmed, forKey: "confirmed")
                }

            }

            public struct Options {

                /** Please use the "id" from the response of "Place Order" endpoint */
                public var replyid: String

                /** answer to question, true means yes, false means no */
                public var confirmed: Bool?

                public init(replyid: String, confirmed: Bool? = nil) {
                    self.replyid = replyid
                    self.confirmed = confirmed
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostIserverReplyByReplyid.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(replyid: String, confirmed: Bool? = nil, body: Body) {
                let options = Options(replyid: replyid, confirmed: confirmed)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "replyid" + "}", with: "\(self.options.replyid)")
            }

            public override var formParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let confirmed = options.confirmed {
                  params["confirmed"] = confirmed
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Reply to questions when placing orders and submit orders */
            public struct Status200: APIModel {

                public let localOrderId: String?

                public let orderId: String?

                public let orderStatus: String?

                public init(localOrderId: String? = nil, orderId: String? = nil, orderStatus: String? = nil) {
                    self.localOrderId = localOrderId
                    self.orderId = orderId
                    self.orderStatus = orderStatus
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    localOrderId = try container.decodeIfPresent("local_order_id")
                    orderId = try container.decodeIfPresent("order_id")
                    orderStatus = try container.decodeIfPresent("order_status")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(localOrderId, forKey: "local_order_id")
                    try container.encodeIfPresent(orderId, forKey: "order_id")
                    try container.encodeIfPresent(orderStatus, forKey: "order_status")
                }

            }

            /** Reply to questions when placing orders and submit orders */
            public struct Status400: APIModel {

                /** for example-order not confirmed */
                public let error: String?

                public let statusCode: Int?

                public init(error: String? = nil, statusCode: Int? = nil) {
                    self.error = error
                    self.statusCode = statusCode
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decodeIfPresent("error")
                    statusCode = try container.decodeIfPresent("statusCode")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(error, forKey: "error")
                    try container.encodeIfPresent(statusCode, forKey: "statusCode")
                }

            }
            public typealias SuccessType = [Status200]

            /** Order is submitted successfully, returns an array contains one object */
            case status200([Status200])

            /** When you send "confirmed-false" in the request, you will receive this */
            case status400(Status400)

            public var success: [Status200]? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: Status400? {
                switch self {
                case .status400(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<[Status200], Status400> {
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
                case .status400(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([Status200].self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
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
