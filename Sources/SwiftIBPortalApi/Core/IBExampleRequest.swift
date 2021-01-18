//
//  File.swift
//  
//
//  Created by Piotr Gorzelany on 18/01/2021.
//

import Foundation

public struct IBExampleRequest: IBApiRequest {
    public typealias Response = [String]
    public var urlRequest: URLRequest {
        return URLRequest(url: URL(string: "https://onet.pl")!)
    }
    public init() {}
}
