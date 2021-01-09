//
// InlineResponse20030Sessions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** If the LIQUID hours differs from the total trading day then a separate &#39;session&#39; tag is returned. */

public struct InlineResponse20030Sessions: Codable {

    public var openingTime: Int?
    public var closingTime: Int?
    /** If the whole trading day is considered LIQUID then the value &#39;LIQUID&#39; is returned. */
    public var prop: String?

    public init(openingTime: Int?, closingTime: Int?, prop: String?) {
        self.openingTime = openingTime
        self.closingTime = closingTime
        self.prop = prop
    }


}
