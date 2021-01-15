//
//  File.swift
//  
//
//  Created by Piotr Gorzelany on 15/01/2021.
//

import Foundation

public extension APIClient {
    func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = []) async throws -> T {
        return try await withUnsafeThrowingContinuation { continuation in
            self.makeRequest(request, behaviours: behaviours, completionQueue: DispatchQueue.main) { response in
                switch response.result {
                case .success(let value):
                    continuation.resume(returning: value)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
