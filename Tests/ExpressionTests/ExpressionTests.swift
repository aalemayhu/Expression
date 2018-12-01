@testable import Expression
import XCTest

final class ExpressionTests: XCTestCase {
    private func check(input: String, expected: String) {
        let actual = Expression(value: input)
        XCTAssertEqual(expected, actual.evaluate())
    }

    func testSimpleAddition() {
        check(input: "2 + 2", expected: "4")
        check(input: "1 + 1", expected: "2")
    }

    // TODO: test subtraction
    // TODO: test division
    // TODO: test long division
    // TODO: test floating point values
    // TODO: test multiplication
    // TODO: test PEMDAS
    // TODO: test exponents
    // TODO: test paranthesis

    static var allTests = [
        ("testSimpleAddition", testSimpleAddition),
    ]
}
