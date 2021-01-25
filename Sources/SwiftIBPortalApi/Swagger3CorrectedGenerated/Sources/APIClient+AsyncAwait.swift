//
//  File.swift
//  
//
//  Created by Piotr Gorzelany on 25/01/2021.
//

import Foundation

public extension APIClient {
    func makeDecodableRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], completionQueue: DispatchQueue = DispatchQueue.main) async throws -> T.SuccessType {
        return await try withUnsafeThrowingContinuation({ continuation in
            makeDecodableRequest(request) { result in
                switch result {
                case .success(let success):
                    continuation.resume(returning: success)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        })
    }
}
