#pragma once

#include <string>

namespace leetcode::p0058 {

// optimized: O(n) time, O(1) space — scan backward from the end, skipping
// trailing spaces then counting the last word.
int solve(const std::string& s);

} // namespace leetcode::p0058
