import XCTest
import class Foundation.Bundle

@testable import Day6

final class ChallengeTests: XCTestCase {
    func testTask1() throws {
        XCTAssertEqual(11, task1(fixture1))
    }
    
    func testTask2() throws {
        XCTAssertEqual(6, task2(fixture1))
    }
    
    let fixture1 = """
    abc

    a
    b
    c

    ab
    ac

    a
    a
    a
    a

    b
    """
}
