#pragma once

#include <string>
#include <vector>

namespace leetcode::p0017 {

// optimized: O(4^n * n) time (n = digits.size()), O(4^n * n) space — build
// the combinations iteratively, one digit at a time.
std::vector<std::string> solve(const std::string& digits);

} // namespace leetcode::p0017
