#pragma once

#include <string>

namespace leetcode::p1108 {

// optimized: O(n) time, O(n) space — build the result one character at a
// time, expanding '.' into "[.]".
std::string solve(const std::string& address);

} // namespace leetcode::p1108
