import XCTest
import class Foundation.Bundle

@testable import Day2

final class ChallengeTests: XCTestCase {
    func testTask1() throws {
        XCTAssertEqual(2, task1(fixture))
    }
    
    func testTask2() throws {
        XCTAssertEqual(1, task2(fixture))
    }
    
    let fixture = [
        "1-3 a: abcde",
        "1-3 b: cdefg",
        "2-9 c: ccccccccc",
    ]
}
