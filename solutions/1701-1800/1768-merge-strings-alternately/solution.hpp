#pragma once

#include <string>

namespace leetcode::p1768 {

// optimized: O(n + m) time, O(n + m) space — walk both strings once.
std::string solve(const std::string& word1, const std::string& word2);

} // namespace leetcode::p1768
