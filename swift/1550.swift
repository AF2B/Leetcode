class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        var oddTimes = 0

        for value in arr {
            if isOdd(value) {
                oddTimes += 1
                if oddTimes == 3 {
                    return true
                }
            }

            if !isOdd(value) {
                oddTimes = 0
            }
        }

        return false
    }

    private func isOdd(_ value: Int) -> Bool {
        return value % 2 != 0
    }
}