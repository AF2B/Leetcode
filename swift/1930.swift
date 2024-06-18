func buildArray(_ nums: [Int]) -> [Int] {
    var result: [Int] = []

    for i in 0..<nums.count {
        result.append(nums[nums[i]])
    }

    return result
}

let test1 = [0,2,1,5,3,4]
let test2 = [5,0,1,2,3,4]

print(buildArray(test1)) // [0,1,2,4,5,3]
print(buildArray(test2)) // [4,5,0,1,2,3]