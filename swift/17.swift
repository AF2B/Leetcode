class Solution {
    let dict: [Character: [String]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]

    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else {
            return []
        }

        let letters = getLetters(digits)
        return generateCombinations(letters)
    }

    private func getLetters(_ digits: String) -> [[String]] {
        var letters: [[String]] = []
        for digit in digits {
            if let letter = dict[digit] {
                letters.append(letter)
            }
        }
        return letters
    }

    private func generateCombinations(_ letters: [[String]]) -> [String] {
        var result: [String] = [""]
        for letterGroup in letters {
            var newResult: [String] = []
            for combination in result {
                for letter in letterGroup {
                    newResult.append(combination + letter)
                }
            }
            result = newResult
        }
        return result
    }
}

let solution = Solution()
print(solution.letterCombinations("23")) // ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]