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

    func testPEMDAS() {
        check(input: "(1 + 2 + 8) ** 2 + (0 * 0) + 100 - 221 + 3", expected: "3")
    }

    func testExponents() {
        check(input: "2**10", expected: "1024")
    }

    func testParanthesis() {
        check(input: "(2 + 2) ** 8", expected: "65536")
    }

    static var allTests = [
        ("testSimpleAddition", testSimpleAddition),
        ("testSubtraction", testSubtraction),
        ("testDivision", testDivision),
        ("testMultiplication", testMultiplication)
    ]
}
