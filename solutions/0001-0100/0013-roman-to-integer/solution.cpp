#include "solution.hpp"

#include <unordered_map>

namespace leetcode::p0013 {

int solve(const std::string& roman) {
    static const std::unordered_map<char, int> values{
        {'I', 1},
        {'V', 5},
        {'X', 10},
        {'L', 50},
        {'C', 100},
        {'D', 500},
        {'M', 1000},
    };

    int result = 0;

    for (std::size_t i = 0; i < roman.size(); ++i) {
        int current = values.at(roman[i]);
        if (i + 1 < roman.size() && current < values.at(roman[i + 1])) {
            result += values.at(roman[i + 1]) - current;
            ++i;
        } else {
            result += current;
        }
    }

    return result;
}

} // namespace leetcode::p0013
