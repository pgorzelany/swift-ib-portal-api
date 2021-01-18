//
//  File.swift
//  
//
//  Created by Piotr Gorzelany on 18/01/2021.
//

import Alamofire
import Foundation

public class IBApiClient {

    // MARK: Properties

    private let baseUrl: URL
    private let session = Session.default

    // MARK: Lifecycle

    public init(baseUrl: URL) {
        self.baseUrl = baseUrl
    }

    // MARK: Methods

    public func makeRequest<Request: IBApiRequest>(_ request: Request) async throws -> Request.Response {
        return await try withUnsafeThrowingContinuation { continuation in
            session.request(request.urlRequest).responseDecodable(of: Request.Response.self) { response in
                continuation.resume(with: response.result)
            }
        }
    }
}
