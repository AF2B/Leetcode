func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var i = 0
    for j in 1..<nums.count {
        if nums[j] != nums[i] {
            i += 1
            nums[i] = nums[j]
        }
    }
    return i + 1
}

var nums = [1,1,2]
print(removeDuplicates(&nums))

func testRemoveDuplicates() {
    var tests = 
        [
            [1, 1, 2], 
            [0, 0, 1, 1, 1, 2, 2, 3, 3, 4],
        ]
    let expectedValues = [2, 5]
    var actualValues = [Int]()

    for i in 0..<tests.count {
        actualValues.append(removeDuplicates(&tests[i]))
    }

    assertTrueInt(expectedValues, actualValues)
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

testRemoveDuplicates()