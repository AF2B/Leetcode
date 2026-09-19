#pragma once

#include <vector>

namespace leetcode::p1920 {

// optimized: O(n) time, O(n) space — direct lookup, nums[nums[i]].
std::vector<int> solve(const std::vector<int>& nums);

} // namespace leetcode::p1920
