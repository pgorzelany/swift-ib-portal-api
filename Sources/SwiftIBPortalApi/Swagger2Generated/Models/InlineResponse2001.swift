//
// InlineResponse2001.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct InlineResponse2001: Codable {

    /** optional, if A doesn&#39;t exist, it means user can&#39;t toggle this option. 0-off, 1-on. */
    public var A: Int?
    /** fyi code */
    public var FC: String?
    /** disclaimer read, 1 &#x3D; yes, &#x3D; 0 no. */
    public var H: Int?
    /** detailed description */
    public var FD: String?
    /** title */
    public var FN: String?

    public init(A: Int?, FC: String?, H: Int?, FD: String?, FN: String?) {
        self.A = A
        self.FC = FC
        self.H = H
        self.FD = FD
        self.FN = FN
    }


}
