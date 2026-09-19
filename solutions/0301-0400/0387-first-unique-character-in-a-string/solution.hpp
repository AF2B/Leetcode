#pragma once

#include <string>

namespace leetcode::p0387 {

// optimized: O(n) time, O(1) space — fixed 26-slot count array (assumes
// lowercase English letters, per the problem's constraints), two passes.
int solve(const std::string& s);

} // namespace leetcode::p0387
