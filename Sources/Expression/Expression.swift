import Foundation

public struct Expression {
    let value: String

    public func evaluate() -> String {
        /**
         * XXX: This won't work on Linux. Someone needs to implement NSExpression upstream[0], maybe you can do it?
         * [0]: https://github.com/apple/swift-corelibs-foundation/blob/master/Foundation/NSExpression.swift
         */
        let exp = NSExpression(format: value)
        if let result = exp.expressionValue(with: nil, context: nil) {
            return "\(result)"
        }

        return value
    }
}
