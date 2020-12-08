import XCTest
import class Foundation.Bundle

@testable import Day8

final class ChallengeTests: XCTestCase {
    func testTask1() throws {
        let program = fixture1
            .split(separator: "\n")
            .map(String.init)
            .map(Instruction.init)
                
        XCTAssertEqual(5, task1(program))
    }
    
    func testTask2() throws {
        let program = fixture1
            .split(separator: "\n")
            .map(String.init)
            .map(Instruction.init)
                
        XCTAssertEqual(8, task2(program))
    }
    
    let fixture1 = """
    nop +0
    acc +1
    jmp +4
    acc +3
    jmp -3
    acc -99
    acc +1
    jmp -4
    acc +6
    """
}
