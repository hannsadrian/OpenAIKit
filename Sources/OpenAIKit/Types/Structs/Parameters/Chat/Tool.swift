//
//  Tool.swift
//  
//
//  Created by Adrian Böhme on 20.08.24.
//

import Foundation

/// A tool object used within a Chat Completion endpoint.
public struct Tool: Codable {
    public var type: String

    public var function: Function

    public init(type: String = "function", function: Function) {
        self.type = type
        self.function = function
    }

    internal var body: [String: Any] {
        var result: [String: Any] = [
            "type": self.type,
            "function": self.function.body
        ]

        return result
    }
}
