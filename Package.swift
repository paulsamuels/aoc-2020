// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "aoc",
    targets: [
        .target(name: "aoc", dependencies: ["Day1", "Day2", "Day3", "Day4", "Day5", "Day6", "Day7", "Day8"]),
        
        .target(name: "Day1", resources: [.process("input.txt")]),
        .testTarget(name: "Day1Tests", dependencies: ["Day1"]),
        
        .target(name: "Day2", resources: [.process("input.txt")]),
        .testTarget(name: "Day2Tests", dependencies: ["Day2"]),
        
        .target(name: "Day3", resources: [.process("input.txt")]),
        .testTarget(name: "Day3Tests", dependencies: ["Day3"]),
        
        .target(name: "Day4", resources: [.process("input.txt")]),
        .testTarget(name: "Day4Tests", dependencies: ["Day4"]),
        
        .target(name: "Day5", resources: [.process("input.txt")]),
        .testTarget(name: "Day5Tests", dependencies: ["Day5"]),
        
        .target(name: "Day6", resources: [.process("input.txt")]),
        .testTarget(name: "Day6Tests", dependencies: ["Day6"]),
        
        .target(name: "Day7", resources: [.process("input.txt")]),
        .testTarget(name: "Day7Tests", dependencies: ["Day7"]),
        
        .target(name: "Day8", resources: [.process("input.txt")]),
        .testTarget(name: "Day8Tests", dependencies: ["Day8"]),
    ]
)
