#pragma once

#include <string>

namespace leetcode::p0242 {

// optimized: O(n) time, O(1) space — fixed 26-slot count array (assumes
// lowercase English letters, per the problem's constraints).
bool solve(const std::string& s, const std::string& t);

// hash-map: O(n) time, O(k) space (k = distinct characters) — works for any
// character set, not just lowercase English letters.
bool solveHashMap(const std::string& s, const std::string& t);

} // namespace leetcode::p0242
