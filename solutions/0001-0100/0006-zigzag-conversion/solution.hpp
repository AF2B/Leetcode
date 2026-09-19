#pragma once

#include <string>

namespace leetcode::p0006 {

// optimized: O(n) time, O(n) space — simulate the zigzag by appending each
// character to its current row, bouncing the row index at the edges.
std::string solve(const std::string& s, int numRows);

} // namespace leetcode::p0006
