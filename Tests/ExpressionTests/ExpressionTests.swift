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
        check(input: " 2.75 + .003 + .158", expected: "2.911")
        check(input: "7.86 * 4.6", expected: "36.156")
//        check(input: "7.86 × 4.6", expected: "36.156")
//        check(input: "7 / 20", expected: "0.35")
    }

    func testSubtraction() {
        check(input: "2018 - 2007", expected: "11")
    }

    func testDivision() {
//        check(input: "283 / 2", expected: "141.5")
        check(input: "90 / 30", expected: "3")
    }


    func testMultiplication() {
        check(input: "2 * 256", expected: "512")
    }

    // TODO: test PEMDAS
    // TODO: test exponents
    // TODO: test paranthesis

    static var allTests = [
        ("testSimpleAddition", testSimpleAddition),
        ("testSubtraction", testSubtraction),
        ("testDivision", testDivision),
        ("testMultiplication", testMultiplication)
    ]
}
