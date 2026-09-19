#include "solution.hpp"

#include <algorithm>
#include <cctype>

namespace leetcode::p0709 {

std::string solve(std::string s) {
    std::ranges::transform(
        s, s.begin(), [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
    return s;
}

} // namespace leetcode::p0709
