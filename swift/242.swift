class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var countS: [Character: Int] = [:]
        var countT: [Character: Int] = [:]

        for char in s {
            countS[char, default: 0] += 1
        }

        for char in t {
            countT[char, default: 0] += 1
        }

        return countS == countT
    }
}
