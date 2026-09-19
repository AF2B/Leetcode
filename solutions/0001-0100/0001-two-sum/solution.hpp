#pragma once

#include <vector>

namespace leetcode::p0001 {

// optimized: O(n) time, O(n) space — one pass with a value-to-index map.
std::vector<int> solve(const std::vector<int>& nums, int target);

// brute-force: O(n^2) time, O(1) space — check every pair.
std::vector<int> solveBruteForce(const std::vector<int>& nums, int target);

} // namespace leetcode::p0001
