import XCTest

#if !os(macOS)
    public func allTests() -> [XCTestCaseEntry] {
        return [
            testCase(ExpressionTests.allTests),
        ]
    }
#endif
