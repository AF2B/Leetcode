func argumentsLength(args: [Any?]) -> Int {
    return args.count
}

let tests = [
    argumentsLength(args: [nil, "hello", 2]) == 3,
    argumentsLength(args: []) == 0,
    argumentsLength(args: [1, 2, 3, nil, 5]) == 5
]

if tests.allSatisfy({ $0 == true }) {
    print("All tests passed")
} else {
    print("Some tests failed")
}
