import XCTest
import class Foundation.Bundle

@testable import Day3

final class ChallengeTests: XCTestCase {
    func testTask1() throws {
        XCTAssertEqual(7, task1(fixture))
    }
    
    func testTask2() throws {
        XCTAssertEqual(336, task2(fixture))
    }
    
    let fixture = [
        "..##.......",
        "#...#...#..",
        ".#....#..#.",
        "..#.#...#.#",
        ".#...##..#.",
        "..#.##.....",
        ".#.#.#....#",
        ".#........#",
        "#.##...#...",
        "#...##....#",
        ".#..#...#.#",
    ]
}
