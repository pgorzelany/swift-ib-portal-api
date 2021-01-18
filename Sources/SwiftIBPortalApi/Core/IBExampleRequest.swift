//
//  File.swift
//  
//
//  Created by Piotr Gorzelany on 18/01/2021.
//

import Foundation

struct IBExampleRequest: IBApiRequest {
    typealias Response = [String]
    var urlRequest: URLRequest {
        return URLRequest(url: URL(string: "")!)
    }
}
