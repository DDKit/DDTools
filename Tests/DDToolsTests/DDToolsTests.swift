import XCTest
@testable import DDTools

final class DDToolsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DDTools().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
