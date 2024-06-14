func scoreOfString(_ s: String) -> Int {
    var score = 0

    let characters = Array(s)
    for i in 0..<characters.count - 1 {
        let current = characters[i].asciiValue
        let next = characters[i + 1].asciiValue
        let diff = abs(Int(current!) - Int(next!))
        score += diff
    }

    return score
}

let bateryOfTests: [Bool] = [
    scoreOfString("zaz") == 50,
    scoreOfString("hello") == 13
]

if bateryOfTests.allSatisfy({ $0 == true }) {
    print("All tests passed")
} else {
    print("Some tests failed")
}