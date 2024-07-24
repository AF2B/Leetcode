class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var countMap = [Int: Int]()
        var intersection = [Int]()

        for value1 in nums1 {
            countMap[value1, default: 0] += 1
        }

        for value2 in nums2 {
            if let count = countMap[value2], count > 0 {
                intersection.append(value2)
                countMap[value2] = count - 1
            }
        }

        return intersection
    }
}