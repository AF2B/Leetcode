#pragma once

#include <string>

namespace leetcode::p3110 {

// optimized: O(n) time, O(1) space — sum |s[i] - s[i+1]| over adjacent
// characters.
int solve(const std::string& s);

} // namespace leetcode::p3110
