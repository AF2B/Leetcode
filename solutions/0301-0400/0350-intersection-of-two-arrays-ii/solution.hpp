#pragma once

#include <vector>

namespace leetcode::p0350 {

// optimized: O(n + m) time, O(min(n, m)) space — count occurrences of the
// smaller array, then consume counts while scanning the other.
std::vector<int> solve(const std::vector<int>& nums1, const std::vector<int>& nums2);

} // namespace leetcode::p0350
