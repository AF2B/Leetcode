#pragma once

#include <string>

namespace leetcode::p0013 {

// optimized: O(n) time, O(1) space — single pass, look ahead for the
// subtractive pairs (IV, IX, XL, XC, CD, CM).
int solve(const std::string& roman);

}  // namespace leetcode::p0013
