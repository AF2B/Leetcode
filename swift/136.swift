func singleNumber(_ nums: [Int]) -> Int {
    var number = 0

    for num in nums {
        number ^= num
    }

    return number
}

func assertTrueInt(_ expectedValues: [Int], _ actualValues: [Int]) {
    for i in 0..<expectedValues.count {
        let expected = expectedValues[i]
        let actual = actualValues[i]

        if expected == actual {
            print("Test case \(i) passed")
        } else {
            print("Test case \(i) failed")
        }
    }
}

var tests =
    [
        [2, 2, 1],
        [4, 1, 2, 1, 2],
    ]

let expectedValues = [1, 4]
var actualValues = [Int]()

for i in 0..<tests.count {
    actualValues.append(singleNumber(tests[i]))
}

assertTrueInt(expectedValues, actualValues)