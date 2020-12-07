import XCTest
import class Foundation.Bundle

@testable import Day5

final class ChallengeTests: XCTestCase {
    func testTask1() throws {
        XCTAssertEqual(357, task1(["FBFBBFFRLR"]))
        XCTAssertEqual(567, task1(["BFFFBBFRRR"]))
        XCTAssertEqual(119, task1(["FFFBBBFRRR"]))
        XCTAssertEqual(820, task1(["BBFFBBFRLL"]))
    }
}
