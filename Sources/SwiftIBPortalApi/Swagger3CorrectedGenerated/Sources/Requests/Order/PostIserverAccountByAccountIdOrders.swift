//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.Order {

    /**
    Place Orders (Support bracket orders)

    You can pass a list of orders here
    */
    public enum PostIserverAccountByAccountIdOrders {

        public static let service = APIService<Response>(id: "postIserverAccountByAccountIdOrders", tag: "Order", method: "POST", path: "/iserver/account/{accountId}/orders", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            /** You can pass a list of orders here
             */
            public struct Body: APIModel {

                /** Notes for bracket orders: 1. Children orders will not have its own "cOID", so please donot pass "cOID"
            parameter in child order.Instead, they will have a "parentId" which must be equal to "cOID" of parent.
            2. When you cancel a parent order, it will cancel all bracket orders, when you cancel one child order,
            it will also cancel its sibling order.
             */
                public let orders: [IBOrderRequest]?

                public init(orders: [IBOrderRequest]? = nil) {
                    self.orders = orders
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    orders = try container.decodeArrayIfPresent("orders")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(orders, forKey: "orders")
                }

            }

            public struct Options {

                /** account id */
                public var accountId: String

                /** Notes for bracket orders: 1. Children orders will not have its own "cOID", so please donot pass "cOID"
parameter in child order.Instead, they will have a "parentId" which must be equal to "cOID" of parent.
2. When you cancel a parent order, it will cancel all bracket orders, when you cancel one child order,
it will also cancel its sibling order.
 */
                public var orders: [IBOrderRequest]?

                public init(accountId: String, orders: [IBOrderRequest]? = nil) {
                    self.accountId = accountId
                    self.orders = orders
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostIserverAccountByAccountIdOrders.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(accountId: String, orders: [IBOrderRequest]? = nil, body: Body) {
                let options = Options(accountId: accountId, orders: orders)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "accountId" + "}", with: "\(self.options.accountId)")
            }

//            public override var formParameters: [String: Any] {
//                var params: [String: Any] = [:]
//                if let orders = options.orders?.encode() {
//                  params["orders"] = orders
//                }
//                return params
//            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** You can pass a list of orders here
             */
            public struct Status200: APIModel {

                public let id: String?

                /** Please note here, if the message is a question, you have to reply to question in order to submit
            the order successfully. See more in the "/iserver/reply/{replyid}" endpoint.
             */
                public let message: [String]?

                public init(id: String? = nil, message: [String]? = nil) {
                    self.id = id
                    self.message = message
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    id = try container.decodeIfPresent("id")
                    message = try container.decodeArrayIfPresent("message")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(id, forKey: "id")
                    try container.encodeIfPresent(message, forKey: "message")
                }

            }
            public typealias SuccessType = [Status200]

            /** returns an array */
            case status200([Status200])

            public var success: [Status200]? {
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
                case 200: self = try .status200(decoder.decode([Status200].self, from: data))
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
