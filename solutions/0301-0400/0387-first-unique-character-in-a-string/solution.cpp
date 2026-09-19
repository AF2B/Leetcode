#include "solution.hpp"

#include <array>

namespace leetcode::p0387 {

int solve(const std::string& s) {
    std::array<int, 26> counts{};

    for (char c : s) {
        ++counts.at(static_cast<std::size_t>(c - 'a'));
    }

    for (std::size_t i = 0; i < s.size(); ++i) {
        if (counts.at(static_cast<std::size_t>(s[i] - 'a')) == 1) {
            return static_cast<int>(i);
        }
    }

    return -1;
}

} // namespace leetcode::p0387
