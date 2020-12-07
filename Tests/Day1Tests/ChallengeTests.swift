import XCTest
import class Foundation.Bundle

@testable import Day1

final class ChallengeTests: XCTestCase {
    func testTask1() throws {
        XCTAssertEqual(514579, task1(fixture))
    }
    
    func testTask2() throws {
        XCTAssertEqual(241861950, task2(fixture))
    }
    
    let fixture = [1721, 979, 366, 299, 675, 1456]
}
