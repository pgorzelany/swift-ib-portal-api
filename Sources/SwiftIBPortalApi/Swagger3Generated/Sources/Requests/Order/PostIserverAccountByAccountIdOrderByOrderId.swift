//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.Order {

    /**
    Modify Order

    Modifies an open order. Must call /iserver/accounts endpoint prior to modifying an order. Use /iservers/account/orders endpoint to review open-order(s).
    */
    public enum PostIserverAccountByAccountIdOrderByOrderId {

        public static let service = APIService<Response>(id: "postIserverAccountByAccountIdOrderByOrderId", tag: "Order", method: "POST", path: "/iserver/account/{accountId}/order/{orderId}", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** account id, or fa group if modifying a group order */
                public var accountId: String

                /** Customer order id, use /iservers/account/orders endpoint to query orderId. */
                public var orderId: String

                public init(accountId: String, orderId: String) {
                    self.accountId = accountId
                    self.orderId = orderId
                }
            }

            public var options: Options

            public var body: ModifyOrder

            public init(body: ModifyOrder, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostIserverAccountByAccountIdOrderByOrderId.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(accountId: String, orderId: String, body: ModifyOrder) {
                let options = Options(accountId: accountId, orderId: orderId)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "accountId" + "}", with: "\(self.options.accountId)").replacingOccurrences(of: "{" + "orderId" + "}", with: "\(self.options.orderId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Modifies an open order. Must call /iserver/accounts endpoint prior to modifying an order. Use /iservers/account/orders endpoint to review open-order(s). */
            public class Status200: APIModel {

                public var localOrderId: String?

                public var orderId: String?

                public var orderStatus: String?

                public init(localOrderId: String? = nil, orderId: String? = nil, orderStatus: String? = nil) {
                    self.localOrderId = localOrderId
                    self.orderId = orderId
                    self.orderStatus = orderStatus
                }

                public required init(from decoder: Decoder) throws {
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

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.localOrderId == object.localOrderId else { return false }
                  guard self.orderId == object.orderId else { return false }
                  guard self.orderStatus == object.orderStatus else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
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