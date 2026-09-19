#pragma once

#include <vector>

namespace leetcode::p1512 {

// optimized: O(n) time, O(n) space — count occurrences per value, then sum
// count * (count - 1) / 2 for each one.
int solve(const std::vector<int>& nums);

// brute-force: O(n^2) time, O(1) space — check every pair.
int solveBruteForce(const std::vector<int>& nums);

} // namespace leetcode::p1512
