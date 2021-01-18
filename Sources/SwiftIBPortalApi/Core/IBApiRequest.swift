//
//  File.swift
//  
//
//  Created by Piotr Gorzelany on 18/01/2021.
//

import Foundation

public protocol IBApiRequest {
    associatedtype Response: Decodable
    var urlRequest: URLRequest { get }
}
