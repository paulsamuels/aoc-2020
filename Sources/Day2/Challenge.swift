import Foundation

public func run() {
    let input = try! String(contentsOf: Bundle.module.url(forResource: "input", withExtension: "txt")!)
        .split(separator: "\n")
        .map(String.init)

    print(task1(input))
    print(task2(input))
}

/*
--- Day 2: Password Philosophy ---

Your flight departs in a few days from the coastal airport; the easiest way down to the coast from here is via toboggan.

The shopkeeper at the North Pole Toboggan Rental Shop is having a bad day. "Something's wrong with our computers; we can't log in!" You ask if you can take a look.

Their password database seems to be a little corrupted: some of the passwords wouldn't have been allowed by the Official Toboggan Corporate Policy that was in effect when they were chosen.

To try to debug the problem, they have created a list (your puzzle input) of passwords (according to the corrupted database) and the corporate policy when that password was set.

For example, suppose you have the following list:

1-3 a: abcde
1-3 b: cdefg
2-9 c: ccccccccc
Each line gives the password policy and then the password. The password policy indicates the lowest and highest number of times a given letter must appear for the password to be valid. For example, 1-3 a means that the password must contain a at least 1 time and at most 3 times.

In the above example, 2 passwords are valid. The middle password, cdefg, is not; it contains no instances of b, but needs at least 1. The first and third passwords are valid: they contain one a or nine c, both within the limits of their respective policies.

How many passwords are valid according to their policies?
*/
func task1(_ input: [String]) -> Int {
    return input.map(makeAttempt).filter { attempt in
       (attempt.a...attempt.b) ~= attempt.password.filter { $0 == attempt.letter }.count
    }.count
}

/*
--- Part Two ---

While it appears you validated the passwords correctly, they don't seem to be what the Official Toboggan Corporate Authentication System is expecting.

The shopkeeper suddenly realizes that he just accidentally explained the password policy rules from his old job at the sled rental place down the street! The Official Toboggan Corporate Policy actually works a little differently.

Each policy actually describes two positions in the password, where 1 means the first character, 2 means the second character, and so on. (Be careful; Toboggan Corporate Policies have no concept of "index zero"!) Exactly one of these positions must contain the given letter. Other occurrences of the letter are irrelevant for the purposes of policy enforcement.

Given the same example list from above:

1-3 a: abcde is valid: position 1 contains a and position 3 does not.
1-3 b: cdefg is invalid: neither position 1 nor position 3 contains b.
2-9 c: ccccccccc is invalid: both position 2 and position 9 contain c.
How many passwords are valid according to the new interpretation of the policies?
*/
func task2(_ input: [String]) -> Int {
    return input.map(makeAttempt).filter { attempt in
        let password = attempt.password
        let a = password[password.index(password.startIndex, offsetBy: attempt.a - 1)] == attempt.letter
        let b = password[password.index(password.startIndex, offsetBy: attempt.b - 1)] == attempt.letter
        return (a && !b) || (b && !a)
    }.count
}

func makeAttempt(_ line: String) -> Attempt {
    let scanner = Scanner(string: line)
    scanner.charactersToBeSkipped = .whitespaces
    
    var a = Int.min
    var b = Int.max
    var letter = NSString?.none
    var password = NSString?.none
    
    scanner.scanInt(&a)
    scanner.scanString("-", into: nil)
    scanner.scanInt(&b)
    scanner.scanCharacters(from: .alphanumerics, into: &letter)
    scanner.scanString(":", into: nil)
    scanner.scanCharacters(from: .alphanumerics, into: &password)
    
    return Attempt(a: a, b: b, letter: Character(letter! as String), password: password! as String)
}

struct Attempt {
    let a: Int
    let b: Int
    let letter: Character
    let password: String
}
