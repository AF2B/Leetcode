#include "solution.hpp"

#include <unordered_map>

namespace leetcode::p0017 {

std::vector<std::string> solve(const std::string& digits) {
    if (digits.empty()) {
        return {};
    }

    static const std::unordered_map<char, std::string> keypad{
        {'2', "abc"},
        {'3', "def"},
        {'4', "ghi"},
        {'5', "jkl"},
        {'6', "mno"},
        {'7', "pqrs"},
        {'8', "tuv"},
        {'9', "wxyz"},
    };

    std::vector<std::string> result{""};

    for (char digit : digits) {
        std::vector<std::string> next;
        for (const auto& combination : result) {
            for (char letter : keypad.at(digit)) {
                next.push_back(combination + letter);
            }
        }
        result = std::move(next);
    }

    return result;
}

} // namespace leetcode::p0017
