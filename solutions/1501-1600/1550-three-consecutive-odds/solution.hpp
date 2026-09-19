#pragma once

#include <vector>

namespace leetcode::p1550 {

// optimized: O(n) time, O(1) space — track a running count of consecutive
// odd values, reset it on any even one.
bool solve(const std::vector<int>& arr);

} // namespace leetcode::p1550
