import XCTest
@testable import FlixerProject

final class StringExtensionsTests: XCTestCase {
    func testIsNotEmpty_WhenCalled_ShouldReturnIfStringIsNotEmpty() {
        let emptyString = ""
        let nonEmptyString = "Test string"
        XCTAssertFalse(emptyString.isNotEmpty)
        XCTAssertTrue(nonEmptyString.isNotEmpty)
    }

    func testToKebabCase_WhenCalled_ShouldFormatStringCorrectly() {
        let camelCase = "CamelCaseExample"
        let kebabCase = camelCase.toKebabCase()
        XCTAssertEqual(kebabCase, "camel-case-example")
    }
}
