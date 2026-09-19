#pragma once

#include <vector>

namespace leetcode::p0136 {

// optimized: O(n) time, O(1) space — XOR cancels out every paired value.
int solve(const std::vector<int>& nums);

} // namespace leetcode::p0136
