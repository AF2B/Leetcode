func getConcatenation(_ nums: [Int]) -> [Int] {
    return nums + nums
}

let test1 = [1,2,1]
let test2 = [1,3,2,1]

print(getConcatenation(test1)) // [1,2,1,1,2,1]
print(getConcatenation(test2)) // [1,3,2,1,1,3,2,1]