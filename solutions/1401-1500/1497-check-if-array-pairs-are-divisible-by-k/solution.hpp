#pragma once

#include <vector>

namespace leetcode::p1497 {

// optimized: O(n + k) time, O(k) space — count remainders mod k, then check
// that each remainder's count matches its complement's (k - r) count.
bool solve(const std::vector<int>& arr, int k);

} // namespace leetcode::p1497
